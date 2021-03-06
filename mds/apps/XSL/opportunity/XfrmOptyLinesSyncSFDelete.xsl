<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../UpsertOpportunityRevenueSFProvABCSImpl.wsdl"/>
      <rootElement name="OptyLineItem_ids" namespace="http://SalesforceIntegration/Opty_SFIds"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/SOA-INFRA/WSDL/SFEndpointProcess.wsdl"/>
      <rootElement name="DeleteRequest" namespace="http://SalesforceProject/SFEndpointProcess"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [WED JAN 06 10:38:44 MST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns3="http://SalesforceProject/SFEndpointProcess"
                xmlns:ns2="http://SalesforceIntegration/Opty_SFIds"
                xmlns:ns0="urn:enterprise.soap.sforce.com"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:ns1="http://www.siebel.com/xml/ISG_SF_Opportunity_IO"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns4="http://SFEndpoint/url"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:client="http://Isecg-SalesforceProject/UpsertOpportunityRevenueSFProvABCSImpl"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns2 wsdl ns1 plnk xsd client ns3 ns0 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <ns3:DeleteRequest>
      <xsl:for-each select="/ns2:OptyLineItem_ids/ns2:Lineitem_ids">
        <ns3:sfdelete>
          <ns3:Id>
            <xsl:value-of select="ns2:SFRevenueId"/>
          </ns3:Id>
          <ns3:objectName>
            <xsl:text disable-output-escaping="no">OpportunityLineItem</xsl:text>
          </ns3:objectName>
        </ns3:sfdelete>
      </xsl:for-each>
    </ns3:DeleteRequest>
  </xsl:template>
</xsl:stylesheet>
