<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    DTR1 - Instance Identifier, NL flavor URA
    II
    Flavor
    .NL The Netherlands
    .URA Nederland, fixed OID 2.16.840.1.113883.2.4.6.3
    Status: draft
-->
<rule xmlns="http://purl.oclc.org/dsdl/schematron"
      abstract="true"
      id="II.NL.URA">
    <extends rule="II"/>

    <!-- 
        URA mag 1 zijn, indien het id van de entiteit waar de organisatie bij 
        hoort (bijvoorbeeld een AssignedDevice) het ZIM is.
    -->
    <assert role="error" test="@nullFlavor or @root='2.16.528.1.1007.3.3'">dtr1-1-II.NL.URA: UZI-registerabonneenummer @root MOET 2.16.528.1.1007.3.3 zijn indien niet null</assert>
    <assert role="error"
           test="not(@root='2.16.528.1.1007.3.3') or matches(@extension,'^[0-9]{8}$')">dtr1-2-II.NL.URA: UZI-registerabonneenummer MOET 8 cijfers lang zijn</assert>

</rule>
