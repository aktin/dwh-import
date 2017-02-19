<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="cda"
	version="1.0"
	extension-element-prefixes="date"
	xmlns:date="http://exslt.org/dates-and-times" 
	xmlns:cda="urn:hl7-org:v3">
	<xsl:param name="pid" select="pid"/>
	<xsl:param name="newtime" select="newtime"/>

	<xsl:variable name="basetime" select="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime/cda:low/@value"/>

	<!-- copy unmatched elements -->
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>

	<!-- override patient id -->
	<xsl:template match="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:id/@extension">
		<xsl:attribute name="extension">
			<xsl:value-of select="$pid"/>
		</xsl:attribute>
	</xsl:template>

	<!-- override timestamp values -->
	<xsl:template match="cda:effectiveTime/cda:low/@value">
	   <xsl:call-template name="GetShiftedTime">
	      <xsl:with-param name="OriginalTime" select="."/>
	   </xsl:call-template>
	</xsl:template>
	<xsl:template match="cda:effectiveTime/cda:high/@value">
		<xsl:call-template name="GetShiftedTime">
			<xsl:with-param name="OriginalTime" select="."/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="cda:effectiveTime/@value">
		<xsl:call-template name="GetShiftedTime">
			<xsl:with-param name="OriginalTime" select="."/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="cda:time/@value">
		<xsl:call-template name="GetShiftedTime">
			<xsl:with-param name="OriginalTime" select="."/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="cda:time/cda:high/@value">
		<xsl:call-template name="GetShiftedTime">
			<xsl:with-param name="OriginalTime" select="."/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="cda:time/cda:low/@value">
		<xsl:call-template name="GetShiftedTime">
			<xsl:with-param name="OriginalTime" select="."/>
		</xsl:call-template>
	</xsl:template>
	
	<!-- calculate shifted time based on the time diff between "basetime" and the respective timestamp in the original document + "newtime"-->
	<xsl:template name="GetShiftedTime">
		<xsl:param name="OriginalTime"></xsl:param>	
		<xsl:variable name="timediff">
			<xsl:call-template name="date:difference">
				<xsl:with-param name="start">
					<xsl:call-template name="ConvertToDateTime">
						<xsl:with-param name="DateTimeString"  select="$basetime"/>
					</xsl:call-template>
				</xsl:with-param>
				<xsl:with-param name="end">			
					<xsl:call-template name="ConvertToDateTime">
						<xsl:with-param name="DateTimeString"  select="$OriginalTime"/>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="rawresult">
		   <xsl:choose>
		      <xsl:when test="normalize-space($timediff)='' or $timediff=''">
		         <xsl:value-of select="$newtime"/>
		      </xsl:when>
		      <xsl:otherwise>
		         <xsl:call-template name="ConvertFromDateTime">
		            <xsl:with-param name="DateTimeString">
		               <xsl:call-template name="date:add">
		                  <xsl:with-param name="date-time">
		                     <xsl:call-template name="ConvertToDateTime">
		                        <xsl:with-param name="DateTimeString"  select="$newtime"/>
		                     </xsl:call-template>
		                  </xsl:with-param>
		                  <xsl:with-param name="duration">	
		                     <xsl:value-of select="$timediff"/>
		                  </xsl:with-param>
		               </xsl:call-template>	
		            </xsl:with-param>
		         </xsl:call-template>	
		      </xsl:otherwise>
		   </xsl:choose>
		</xsl:variable>	
		
	   <!-- reduce result to previous length -->   
	   <xsl:attribute name="value">
	      <xsl:value-of select="substring($rawresult,1,string-length($OriginalTime))"/>
	   </xsl:attribute> 
	   <xsl:comment><xsl:value-of select="$timediff"/></xsl:comment>
	</xsl:template>
	
	<!-- Convert CDA Timestamp to xs:dateTime, xs:date etc. -->
	<xsl:template name="ConvertToDateTime">
		<xsl:param name="DateTimeString"/>
		<xsl:if test="$DateTimeString">
			<xsl:choose>
				<xsl:when test="string-length($DateTimeString) = 4"><xsl:value-of select="$DateTimeString"/></xsl:when>
				<xsl:when test="string-length($DateTimeString) = 6"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/></xsl:when>
				<xsl:when test="string-length($DateTimeString) = 8"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/></xsl:when>
				<xsl:when test="string-length($DateTimeString) = 12"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/>:00</xsl:when>
				<xsl:when test="string-length($DateTimeString) > 13"><xsl:value-of select="substring($DateTimeString,1,4)"/>-<xsl:value-of select="substring($DateTimeString,5,2)"/>-<xsl:value-of select="substring($DateTimeString,7,2)"/>T<xsl:value-of select="substring($DateTimeString,9,2)"/>:<xsl:value-of select="substring($DateTimeString,11,2)"/>:<xsl:value-of select="substring($DateTimeString,13,2)"/></xsl:when>
				<xsl:otherwise>
					<xsl:message terminate="yes">XSL-Transformation Error: Datetime Format not recognized</xsl:message>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:template>
	
	<!-- Convert xs:dateTime, xs:date etc. to CDA Timestamp-->
	<xsl:template name="ConvertFromDateTime">
		<xsl:param name="DateTimeString"/>
		<xsl:value-of select="substring($DateTimeString,1,4)"/><xsl:value-of select="substring($DateTimeString,6,2)"/><xsl:value-of select="substring($DateTimeString,9,2)"/><xsl:value-of select="substring($DateTimeString,12,2)"/><xsl:value-of select="substring($DateTimeString,15,2)"/><xsl:value-of select="substring($DateTimeString,18,2)"/>
	</xsl:template>
	
	<!-- EXSLT Extensions (by Jeni Tennison) - http://exslt.org/-->
	<date:month-lengths>
		<date:month>31</date:month>
		<date:month>28</date:month>
		<date:month>31</date:month>
		<date:month>30</date:month>
		<date:month>31</date:month>
		<date:month>30</date:month>
		<date:month>31</date:month>
		<date:month>31</date:month>
		<date:month>30</date:month>
		<date:month>31</date:month>
		<date:month>30</date:month>
		<date:month>31</date:month>
	</date:month-lengths>
	
	<xsl:template name="date:difference">
		<xsl:param name="start" />
		<xsl:param name="end" />
		
		<xsl:variable name="start-neg" select="starts-with($start, '-')" />
		<xsl:variable name="start-no-neg">
			<xsl:choose>
				<xsl:when test="$start-neg or starts-with($start, '+')">
					<xsl:value-of select="substring($start, 2)" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$start" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="start-no-neg-length" select="string-length($start-no-neg)" />
		<xsl:variable name="start-timezone">
			<xsl:choose>
				<xsl:when test="substring($start-no-neg, $start-no-neg-length) = 'Z'">Z</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="tz" select="substring($start-no-neg, $start-no-neg-length - 5)" />
					<xsl:if test="(substring($tz, 1, 1) = '-' or 
						substring($tz, 1, 1) = '+') and
						substring($tz, 4, 1) = ':'">
						<xsl:value-of select="$tz" />
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="end-neg" select="starts-with($end, '-')" />
		<xsl:variable name="end-no-neg">
			<xsl:choose>
				<xsl:when test="$end-neg or starts-with($end, '+')">
					<xsl:value-of select="substring($end, 2)" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$end" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="end-no-neg-length" select="string-length($end-no-neg)" />
		<xsl:variable name="end-timezone">
			<xsl:choose>
				<xsl:when test="substring($end-no-neg, $end-no-neg-length) = 'Z'">Z</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="tz" select="substring($end-no-neg, $end-no-neg-length - 5)" />
					<xsl:if test="(substring($tz, 1, 1) = '-' or 
						substring($tz, 1, 1) = '+') and
						substring($tz, 4, 1) = ':'">
						<xsl:value-of select="$tz" />
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		
		<xsl:variable name="difference">
			<xsl:if test="(not(string($start-timezone)) or
				$start-timezone = 'Z' or 
				(substring($start-timezone, 2, 2) &lt;= 23 and
				substring($start-timezone, 5, 2) &lt;= 59)) and
				(not(string($end-timezone)) or
				$end-timezone = 'Z' or 
				(substring($end-timezone, 2, 2) &lt;= 23 and
				substring($end-timezone, 5, 2) &lt;= 59))">
				<xsl:variable name="start-dt" select="substring($start-no-neg, 1, $start-no-neg-length - string-length($start-timezone))" />
				<xsl:variable name="start-dt-length" select="string-length($start-dt)" />
				<xsl:variable name="end-dt" select="substring($end-no-neg, 1, $end-no-neg-length - string-length($end-timezone))" />
				<xsl:variable name="end-dt-length" select="string-length($end-dt)" />
				
				<xsl:variable name="start-year" select="substring($start-dt, 1, 4) * (($start-neg * -2) + 1)" />
				<xsl:variable name="end-year" select="substring($end-dt, 1, 4) * (($end-neg * -2) + 1)" />
				<xsl:variable name="diff-year" select="$end-year - $start-year" />
				<xsl:choose>
					<xsl:when test="not(number($start-year) and number($end-year))" />
					<xsl:when test="$start-dt-length = 4 or $end-dt-length = 4">
						<xsl:choose>
							<xsl:when test="$diff-year &lt; 0">-P<xsl:value-of select="$diff-year * -1" />Y</xsl:when>
							<xsl:otherwise>P<xsl:value-of select="$diff-year" />Y</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:when test="substring($start-dt, 5, 1) = '-' and 
						substring($end-dt, 5, 1) = '-'">
						<xsl:variable name="start-month" select="substring($start-dt, 6, 2)" />
						<xsl:variable name="end-month" select="substring($end-dt, 6, 2)" />
						<xsl:variable name="diff-month" select="$end-month - $start-month" />
						<xsl:choose>
							<xsl:when test="not($start-month &lt;= 12 and $end-month &lt;= 12)" />
							<xsl:when test="$start-dt-length = 7 or $end-dt-length = 7">
								<xsl:variable name="months" select="$diff-month + ($diff-year * 12)" />
								<xsl:variable name="abs-months" select="$months * ((($months >= 0) * 2) - 1)" />
								<xsl:variable name="y" select="floor($abs-months div 12)" />
								<xsl:variable name="m" select="$abs-months mod 12" />
								<xsl:if test="$months &lt; 0">-</xsl:if>
								<xsl:text>P</xsl:text>
								<xsl:if test="$y"><xsl:value-of select="$y" />Y</xsl:if>
								<xsl:if test="$m"><xsl:value-of select="$m" />M</xsl:if>
							</xsl:when>
							<xsl:when test="substring($start-dt, 8, 1) = '-' and
								substring($end-dt, 8, 1) = '-'">
								<xsl:variable name="start-day" select="substring($start-dt, 9, 2)" />
								<xsl:variable name="end-day" select="substring($end-dt, 9, 2)" />
								<xsl:if test="$start-day &lt;= 31 and $end-day &lt;= 31">
									<xsl:variable name="month-lengths" select="document('')/*/date:month-lengths/date:month" />
									<xsl:variable name="start-y-1" select="$start-year - 1" />
									<xsl:variable name="start-leaps" 
										select="floor($start-y-1 div 4) -
										floor($start-y-1 div 100) +
										floor($start-y-1 div 400)" />
									<xsl:variable name="start-leap" select="(not($start-year mod 4) and $start-year mod 100) or not($start-year mod 400)" />
									<xsl:variable name="start-month-days" 
										select="sum($month-lengths[position() &lt; $start-month])" />
									<xsl:variable name="start-days">
										<xsl:variable name="days" 
											select="($start-year * 365) + $start-leaps +
											$start-month-days + $start-day" />
										<xsl:choose>
											<xsl:when test="$start-leap">
												<xsl:value-of select="$days + 1" />
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$days" />
											</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<xsl:variable name="end-y-1" select="$end-year - 1" />
									<xsl:variable name="end-leaps" 
										select="floor($end-y-1 div 4) -
										floor($end-y-1 div 100) +
										floor($end-y-1 div 400)" />
									<xsl:variable name="end-leap" select="(not($end-year mod 4) and $end-year mod 100) or not($end-year mod 400)" />
									<xsl:variable name="end-month-days" 
										select="sum($month-lengths[position() &lt; $end-month])" />
									<xsl:variable name="end-days">
										<xsl:variable name="days" 
											select="($end-year * 365) + $end-leaps +
											$end-month-days + $end-day" />
										<xsl:choose>
											<xsl:when test="$end-leap">
												<xsl:value-of select="$days + 1" />
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="$days" />
											</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<xsl:variable name="diff-days" select="$end-days - $start-days" />
									<xsl:choose>
										<xsl:when test="$start-dt-length = 10 or $end-dt-length = 10">
											<xsl:choose>
												<xsl:when test="$diff-days &lt; 0">-P<xsl:value-of select="$diff-days * -1" />D</xsl:when>
												<xsl:otherwise>P<xsl:value-of select="$diff-days" />D</xsl:otherwise>
											</xsl:choose>
										</xsl:when>
										<xsl:when test="substring($start-dt, 11, 1) = 'T' and
											substring($end-dt, 11, 1) = 'T' and
											substring($start-dt, 14, 1) = ':' and
											substring($start-dt, 17, 1) = ':' and
											substring($end-dt, 14, 1) = ':' and
											substring($end-dt, 17, 1) = ':'">
											<xsl:variable name="start-hour" select="substring($start-dt, 12, 2)" />
											<xsl:variable name="start-min" select="substring($start-dt, 15, 2)" />
											<xsl:variable name="start-sec" select="substring($start-dt, 18)" />
											<xsl:variable name="end-hour" select="substring($end-dt, 12, 2)" />
											<xsl:variable name="end-min" select="substring($end-dt, 15, 2)" />
											<xsl:variable name="end-sec" select="substring($end-dt, 18)" />
											<xsl:if test="$start-hour &lt;= 23 and $end-hour &lt;= 23 and
												$start-min &lt;= 59 and $end-min &lt;= 59 and
												$start-sec &lt;= 60 and $end-sec &lt;= 60">
												<xsl:variable name="min-s" select="60" />
												<xsl:variable name="hour-s" select="60 * 60" />
												<xsl:variable name="day-s" select="60 * 60 * 24" />
												
												<xsl:variable name="start-tz-adj">
													<xsl:variable name="tz" 
														select="(substring($start-timezone, 2, 2) * $hour-s) + 
														(substring($start-timezone, 5, 2) * $min-s)" />
													<xsl:choose>
														<xsl:when test="starts-with($start-timezone, '-')">
															<xsl:value-of select="$tz" />
														</xsl:when>
														<xsl:when test="starts-with($start-timezone, '+')">
															<xsl:value-of select="$tz * -1" />
														</xsl:when>
														<xsl:otherwise>0</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												<xsl:variable name="end-tz-adj">
													<xsl:variable name="tz" 
														select="(substring($end-timezone, 2, 2) * $hour-s) + 
														(substring($end-timezone, 5, 2) * $min-s)" />
													<xsl:choose>
														<xsl:when test="starts-with($end-timezone, '-')">
															<xsl:value-of select="$tz" />
														</xsl:when>
														<xsl:when test="starts-with($end-timezone, '+')">
															<xsl:value-of select="$tz * -1" />
														</xsl:when>
														<xsl:otherwise>0</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												
												<xsl:variable name="start-secs" select="$start-sec + ($start-min * $min-s) + ($start-hour * $hour-s) + ($start-days * $day-s) + $start-tz-adj" />
												<xsl:variable name="end-secs" select="$end-sec + ($end-min * $min-s) + ($end-hour * $hour-s) + ($end-days * $day-s) + $end-tz-adj" />
												<xsl:variable name="diff-secs" select="$end-secs - $start-secs" />
												<xsl:variable name="s" select="$diff-secs * ((($diff-secs &lt; 0) * -2) + 1)" />
												<xsl:variable name="days" select="floor($s div $day-s)" />
												<xsl:variable name="hours" select="floor(($s - ($days * $day-s)) div $hour-s)" />
												<xsl:variable name="mins" select="floor(($s - ($days * $day-s) - ($hours * $hour-s)) div $min-s)" />
												<xsl:variable name="secs" select="$s - ($days * $day-s) - ($hours * $hour-s) - ($mins * $min-s)" />
												<xsl:if test="$diff-secs &lt; 0">-</xsl:if>
												<xsl:text>P</xsl:text>
												<xsl:if test="$days">
													<xsl:value-of select="$days" />
													<xsl:text>D</xsl:text>
												</xsl:if>
												<xsl:if test="$hours or $mins or $secs">T</xsl:if>
												<xsl:if test="$hours">
													<xsl:value-of select="$hours" />
													<xsl:text>H</xsl:text>
												</xsl:if>
												<xsl:if test="$mins">
													<xsl:value-of select="$mins" />
													<xsl:text>M</xsl:text>
												</xsl:if>
												<xsl:if test="$secs">
													<xsl:value-of select="$secs" />
													<xsl:text>S</xsl:text>
												</xsl:if>
											</xsl:if>
										</xsl:when>
									</xsl:choose>
								</xsl:if>
							</xsl:when>
						</xsl:choose>
					</xsl:when>
				</xsl:choose>
			</xsl:if>
		</xsl:variable>
		<xsl:value-of select="$difference" />   
	</xsl:template>
	
	<xsl:template name="date:add">
	<xsl:param name="date-time" />
   <xsl:param name="duration" />
   <xsl:variable name="dt-neg" select="starts-with($date-time, '-')" />
   <xsl:variable name="dt-no-neg">
      <xsl:choose>
         <xsl:when test="$dt-neg or starts-with($date-time, '+')">
            <xsl:value-of select="substring($date-time, 2)" />
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$date-time" />
         </xsl:otherwise>
      </xsl:choose>
   </xsl:variable>
   <xsl:variable name="dt-no-neg-length" select="string-length($dt-no-neg)" />
   <xsl:variable name="timezone">
      <xsl:choose>
         <xsl:when test="substring($dt-no-neg, $dt-no-neg-length) = 'Z'">Z</xsl:when>
         <xsl:otherwise>
            <xsl:variable name="tz" select="substring($dt-no-neg, $dt-no-neg-length - 5)" />
            <xsl:if test="(substring($tz, 1, 1) = '-' or 
                           substring($tz, 1, 1) = '+') and
                          substring($tz, 4, 1) = ':'">
               <xsl:value-of select="$tz" />
            </xsl:if>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:variable>
   <xsl:variable name="new-dt">
      <xsl:if test="not(string($timezone)) or
                    $timezone = 'Z' or 
                    (substring($timezone, 2, 2) &lt;= 23 and
                     substring($timezone, 5, 2) &lt;= 59)">
         <xsl:variable name="dt" select="substring($dt-no-neg, 1, $dt-no-neg-length - string-length($timezone))" />
         <xsl:variable name="dt-length" select="string-length($dt)" />
         <xsl:variable name="du-neg" select="starts-with($duration, '-')" />
         <xsl:variable name="du">
            <xsl:choose>
               <xsl:when test="$du-neg"><xsl:value-of select="substring($duration, 2)" /></xsl:when>
               <xsl:otherwise><xsl:value-of select="$duration" /></xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:if test="starts-with($du, 'P') and
                       not(translate($du, '0123456789PYMDTHS.', ''))">
            <xsl:variable name="du-date">
               <xsl:choose>
                  <xsl:when test="contains($du, 'T')"><xsl:value-of select="substring-before(substring($du, 2), 'T')" /></xsl:when>
                  <xsl:otherwise><xsl:value-of select="substring($du, 2)" /></xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="du-time">
               <xsl:if test="contains($du, 'T')"><xsl:value-of select="substring-after($du, 'T')" /></xsl:if>
            </xsl:variable>
            <xsl:if test="(not($du-date) or
                           (not(translate($du-date, '0123456789YMD', '')) and
                            not(substring-after($du-date, 'D')) and
                            (contains($du-date, 'D') or 
                             (not(substring-after($du-date, 'M')) and
                              (contains($du-date, 'M') or
                               not(substring-after($du-date, 'Y'))))))) and
                          (not($du-time) or
                           (not(translate($du-time, '0123456789HMS.', '')) and
                            not(substring-after($du-time, 'S')) and
                            (contains($du-time, 'S') or
                             not(substring-after($du-time, 'M')) and
                             (contains($du-time, 'M') or
                              not(substring-after($du-time, 'Y'))))))">
               <xsl:variable name="duy-str">
                  <xsl:choose>
                     <xsl:when test="contains($du-date, 'Y')"><xsl:value-of select="substring-before($du-date, 'Y')" /></xsl:when>
                     <xsl:otherwise>0</xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="dum-str">
                  <xsl:choose>
                     <xsl:when test="contains($du-date, 'M')">
                        <xsl:choose>
                           <xsl:when test="contains($du-date, 'Y')"><xsl:value-of select="substring-before(substring-after($du-date, 'Y'), 'M')" /></xsl:when>
                           <xsl:otherwise><xsl:value-of select="substring-before($du-date, 'M')" /></xsl:otherwise>
                        </xsl:choose>
                     </xsl:when>
                     <xsl:otherwise>0</xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="dud-str">
                  <xsl:choose>
                     <xsl:when test="contains($du-date, 'D')">
                        <xsl:choose>
                           <xsl:when test="contains($du-date, 'M')"><xsl:value-of select="substring-before(substring-after($du-date, 'M'), 'D')" /></xsl:when>
                           <xsl:when test="contains($du-date, 'Y')"><xsl:value-of select="substring-before(substring-after($du-date, 'Y'), 'D')" /></xsl:when>
                           <xsl:otherwise><xsl:value-of select="substring-before($du-date, 'D')" /></xsl:otherwise>
                        </xsl:choose>
                     </xsl:when>
                     <xsl:otherwise>0</xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="duh-str">
                  <xsl:choose>
                     <xsl:when test="contains($du-time, 'H')"><xsl:value-of select="substring-before($du-time, 'H')" /></xsl:when>
                     <xsl:otherwise>0</xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="dumin-str">
                  <xsl:choose>
                     <xsl:when test="contains($du-time, 'M')">
                        <xsl:choose>
                           <xsl:when test="contains($du-time, 'H')"><xsl:value-of select="substring-before(substring-after($du-time, 'H'), 'M')" /></xsl:when>
                           <xsl:otherwise><xsl:value-of select="substring-before($du-time, 'M')" /></xsl:otherwise>
                        </xsl:choose>
                     </xsl:when>
                     <xsl:otherwise>0</xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="dus-str">
                  <xsl:choose>
                     <xsl:when test="contains($du-time, 'S')">
                        <xsl:choose>
                           <xsl:when test="contains($du-time, 'M')"><xsl:value-of select="substring-before(substring-after($du-time, 'M'), 'S')" /></xsl:when>
                           <xsl:when test="contains($du-time, 'H')"><xsl:value-of select="substring-before(substring-after($du-time, 'H'), 'S')" /></xsl:when>
                           <xsl:otherwise><xsl:value-of select="substring-before($du-time, 'S')" /></xsl:otherwise>
                        </xsl:choose>
                     </xsl:when>
                     <xsl:otherwise>0</xsl:otherwise>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="mult" select="($du-neg * -2) + 1" />
               <xsl:variable name="duy" select="$duy-str * $mult" />
               <xsl:variable name="dum" select="$dum-str * $mult" />
               <xsl:variable name="dud" select="$dud-str * $mult" />
               <xsl:variable name="duh" select="$duh-str * $mult" />
               <xsl:variable name="dumin" select="$dumin-str * $mult" />
               <xsl:variable name="dus" select="$dus-str * $mult" />

               <xsl:variable name="year" select="substring($dt, 1, 4) * (($dt-neg * -2) + 1)" />
               <xsl:choose>
                  <xsl:when test="$year and
                                  string($duy) = 'NaN' or 
                                  string($dum) = 'NaN' or 
                                  string($dud) = 'NaN' or 
                                  string($duh) = 'NaN' or 
                                  string($dumin) = 'NaN' or 
                                  string($dus) = 'NaN'" />
                  <xsl:when test="$dt-length > 4 or
                                  $dum or $dud or $duh or $dumin or $dus">
                     <xsl:variable name="month">
                        <xsl:choose>
                           <xsl:when test="$dt-length > 4">
                              <xsl:if test="substring($dt, 5, 1) = '-'">
                                 <xsl:value-of select="substring($dt, 6, 2)" />
                              </xsl:if>
                           </xsl:when>
                           <xsl:otherwise>1</xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:choose>
                        <xsl:when test="not($month) or $month > 12" />
                        <xsl:when test="$dt-length > 7 or
                                        $dud or $duh or $dumin or $dus">
                           <xsl:variable name="day">
                              <xsl:choose>
                                 <xsl:when test="$dt-length > 7">
                                    <xsl:if test="substring($dt, 8, 1) = '-'">
                                       <xsl:value-of select="substring($dt, 9, 2)" />
                                    </xsl:if>
                                 </xsl:when>
                                 <xsl:otherwise>1</xsl:otherwise>
                              </xsl:choose>
                           </xsl:variable>
                           <xsl:choose>
                              <xsl:when test="not($day) or $day > 31" />
                              <xsl:when test="$dt-length > 10 or
                                              $duh or $dumin or $dus">
                                 <xsl:if test="$dt-length = 10 or
                                               (substring($dt, 11, 1) = 'T' and
                                                substring($dt, 14, 1) = ':' and
                                                substring($dt, 17, 1) = ':')">
                                    <xsl:variable name="hour">
                                       <xsl:choose>
                                          <xsl:when test="$dt-length > 10"><xsl:value-of select="substring($dt, 12, 2)" /></xsl:when>
                                          <xsl:otherwise>0</xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:variable>
                                    <xsl:variable name="minute">
                                       <xsl:choose>
                                          <xsl:when test="$dt-length > 10"><xsl:value-of select="substring($dt, 15, 2)" /></xsl:when>
                                          <xsl:otherwise>0</xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:variable>
                                    <xsl:variable name="second">
                                       <xsl:choose>
                                          <xsl:when test="$dt-length > 10"><xsl:value-of select="substring($dt, 18)" /></xsl:when>
                                          <xsl:otherwise>0</xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:variable>
                                    <xsl:if test="$hour &lt;= 23 and $minute &lt;= 59 and $second &lt;= 60">
                                       <xsl:variable name="new-second" select="$second + $dus" />
                                       <xsl:variable name="new-minute" select="$minute + $dumin + floor($new-second div 60)" />
                                       <xsl:variable name="new-hour" select="$hour + $duh + floor($new-minute div 60)" />
                                       <xsl:variable name="new-month" select="$month + $dum" />
                                       <xsl:call-template name="date:_add-days">
                                          <xsl:with-param name="year" select="$year + $duy + floor(($new-month - 1) div 12)" />
                                          <xsl:with-param name="month">
                                             <xsl:variable name="m">
                                                <xsl:choose>
                                                   <xsl:when test="$new-month &lt; 1"><xsl:value-of select="$new-month + 12" /></xsl:when>
                                                   <xsl:otherwise><xsl:value-of select="$new-month" /></xsl:otherwise>
                                                </xsl:choose>
                                             </xsl:variable>
                                             <xsl:choose>
                                                <xsl:when test="$m mod 12">
                                                   <xsl:value-of select="format-number($m mod 12, '00')" />
                                                </xsl:when>
                                                <xsl:otherwise>12</xsl:otherwise>
                                             </xsl:choose>
                                          </xsl:with-param>
                                          <xsl:with-param name="day" select="$day" />
                                          <xsl:with-param name="days" select="$dud + floor($new-hour div 24)" />
                                       </xsl:call-template>
                                       <xsl:text>T</xsl:text>
                                       <xsl:value-of select="format-number(($new-hour + 24) mod 24, '00')" />
                                       <xsl:text>:</xsl:text>
                                       <xsl:value-of select="format-number($new-minute mod 60, '00')" />
                                       <xsl:text>:</xsl:text>
                                       <xsl:if test="$new-second mod 60 &lt; 10">0</xsl:if>
                                       <xsl:value-of select="$new-second mod 60" />
                                       <xsl:value-of select="$timezone" />
                                    </xsl:if>
                                 </xsl:if>
                              </xsl:when>
                              <xsl:otherwise>
                                 <xsl:variable name="new-month" select="$month + $dum" />
                                 <xsl:call-template name="date:_add-days">
                                    <xsl:with-param name="year" select="$year + $duy + floor(($new-month - 1) div 12)" />
                                    <xsl:with-param name="month">
                                       <xsl:variable name="m">
                                          <xsl:choose>
                                             <xsl:when test="$new-month &lt; 1"><xsl:value-of select="$new-month + 12" /></xsl:when>
                                             <xsl:otherwise><xsl:value-of select="$new-month" /></xsl:otherwise>
                                          </xsl:choose>
                                       </xsl:variable>
                                       <xsl:choose>
                                          <xsl:when test="$m mod 12">
                                             <xsl:value-of select="format-number($m mod 12, '00')" />
                                          </xsl:when>
                                          <xsl:otherwise>12</xsl:otherwise>
                                       </xsl:choose>
                                    </xsl:with-param>
                                    <xsl:with-param name="day" select="$day" />
                                    <xsl:with-param name="days" select="$dud" />
                                 </xsl:call-template>
                                 <xsl:value-of select="$timezone" />
                              </xsl:otherwise>
                           </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:variable name="new-month" select="$month + $dum" />
                           <xsl:value-of select="format-number($year + $duy + floor(($new-month - 1) div 12), '0000')" />
                           <xsl:text>-</xsl:text>
                           <xsl:variable name="m">
                              <xsl:choose>
                                 <xsl:when test="$new-month &lt; 1"><xsl:value-of select="$new-month + 12" /></xsl:when>
                                 <xsl:otherwise><xsl:value-of select="$new-month" /></xsl:otherwise>
                              </xsl:choose>
                           </xsl:variable>
                           <xsl:choose>
                              <xsl:when test="$m mod 12">
                                 <xsl:value-of select="format-number($m mod 12, '00')" />
                              </xsl:when>
                              <xsl:otherwise>12</xsl:otherwise>
                           </xsl:choose>
                           <xsl:value-of select="$timezone" />
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="format-number($year + $duy, '0000')" />
                     <xsl:value-of select="$timezone" />
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:if>
         </xsl:if>
      </xsl:if>
   </xsl:variable>
   <xsl:choose>
     <xsl:when test="string-length($date-time) > 10">
       <xsl:value-of select="$new-dt" />
     </xsl:when>
     <xsl:otherwise>
       <xsl:value-of select="substring($new-dt, 1, string-length($date-time))" />
     </xsl:otherwise>
   </xsl:choose>
</xsl:template>

<xsl:template name="date:_add-days">
   <xsl:param name="year" />
   <xsl:param name="month" />
   <xsl:param name="day" />
   <xsl:param name="days" />
   <xsl:param name="new-day" select="'NaN'" />
   <xsl:variable name="leap" select="(not($year mod 4) and $year mod 100) or not($year mod 400)" />
   <xsl:variable name="month-days" select="document('')/*/date:month-lengths/date:month" />
   <xsl:variable name="days-in-month">
      <xsl:choose>
         <xsl:when test="$month = 2 and $leap">
            <xsl:value-of select="$month-days[number($month)] + 1" />
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$month-days[number($month)]" />
         </xsl:otherwise>
      </xsl:choose>
   </xsl:variable>
   <xsl:choose>
      <xsl:when test="$new-day = 'NaN'">
         <xsl:call-template name="date:_add-days">
            <xsl:with-param name="year" select="$year" />
            <xsl:with-param name="month" select="$month" />
            <xsl:with-param name="new-day">
               <xsl:choose>
                  <xsl:when test="$day > $days-in-month">
                     <xsl:value-of select="$days-in-month + $days" />
                  </xsl:when>
                  <xsl:otherwise><xsl:value-of select="$day + $days" /></xsl:otherwise>
               </xsl:choose>
            </xsl:with-param>
         </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
         <xsl:choose>
            <xsl:when test="$new-day &lt; 1">
               <xsl:call-template name="date:_add-days">
                  <xsl:with-param name="year" select="$year - ($month = 1)" />
                  <xsl:with-param name="month">
                     <xsl:choose>
                        <xsl:when test="$month = 1">12</xsl:when>
                        <xsl:otherwise><xsl:value-of select="$month - 1" /></xsl:otherwise>
                     </xsl:choose>
                  </xsl:with-param>
                  <xsl:with-param name="new-day">
                     <xsl:variable name="days-in-new-month">
                        <xsl:choose>
                           <xsl:when test="$leap and $month = 3">29</xsl:when>
                           <xsl:when test="$month = 1">31</xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="$month-days[$month - 1]" />
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>                     
                     <xsl:value-of select="$new-day + $days-in-new-month" />
                  </xsl:with-param>
               </xsl:call-template>
            </xsl:when>
            <xsl:when test="$new-day > $days-in-month">
               <xsl:call-template name="date:_add-days">
                  <xsl:with-param name="year" select="$year + ($month = 12)" />
                  <xsl:with-param name="month">
                     <xsl:choose>
                        <xsl:when test="$month = 12">1</xsl:when>
                        <xsl:otherwise><xsl:value-of select="$month + 1" /></xsl:otherwise>
                     </xsl:choose>
                  </xsl:with-param>
                  <xsl:with-param name="new-day" select="$new-day - $days-in-month" />
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="format-number($year, '0000')" />
               <xsl:text>-</xsl:text>
               <xsl:value-of select="format-number($month, '00')" />
               <xsl:text>-</xsl:text>
               <xsl:value-of select="format-number($new-day, '00')" />
            </xsl:otherwise>
         </xsl:choose>
      </xsl:otherwise>
   </xsl:choose>
</xsl:template>
	<!-- \EXSLT Extensions (by Jeni Tennison)- http://exslt.org/-->
	
</xsl:stylesheet>