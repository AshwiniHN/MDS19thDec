<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/SOA-INFRA/WSDL/UpsertQuoteSFProvider.wsdl"/>
      <rootElement name="Modified_Quotes" namespace=""/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/WSDL/generateEnterprise.wsdl"/>
      <rootElement name="create" namespace="urn:enterprise.soap.sforce.com"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [MON FEB 08 15:55:58 CST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:ns11="http://www.siebel.com/xml/OptyEventsToProcessFromBroker"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:tns="urn:enterprise.soap.sforce.com"
                xmlns:client="http://xmlns.oracle.com/QuoteIntegration/QuoteIntegrationFromBrokerToSF/UpsertQuoteSFProvider"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:fns="urn:fault.enterprise.soap.sforce.com"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns1="http://schemas.oracle.com/bpel/extension"
                xmlns:ens="urn:sobject.enterprise.soap.sforce.com"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl ns11 plnk client wsdl xsd ns1 soap tns fns ens xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <tns:create>
      <!--tns:sObjects>
        <xsl:attribute name="xsi:type">
          <xsl:text disable-output-escaping="no">ens:Opportunity</xsl:text>
        </xsl:attribute>
        <ens:Id>
          <xsl:text disable-output-escaping="no">  </xsl:text>
        </ens:Id>
        		
		<xsl:if test="/Modified_Quotes/Quote_Header/Promotion_Code  !=''">		
		<ens:Promotion__r>
		<xsl:if test="/Modified_Quotes/Quote_Header/Promotion_Code !=''">
		<ens:Promo_Code__c>
		<xsl:value-of select="/Modified_Quotes/Quote_Header/Promotion_Code"/>
		</ens:Promo_Code__c>
		</xsl:if>
		</ens:Promotion__r>
		</xsl:if>
      </tns:sObjects--> 
	  
	  <tns:sObjects>
        <xsl:attribute name="xsi:type">
          <xsl:text disable-output-escaping="no">ens:Quote</xsl:text>
        </xsl:attribute>
        <ens:Id>
        <xsl:value-of select="/Modified_Quotes/Quote_Header/Quote_ID"/>
        </ens:Id>  				
		<ens:Update_Opportunity_Flag__c>
		 <xsl:text disable-output-escaping="no">true</xsl:text>
		</ens:Update_Opportunity_Flag__c>
		
      </tns:sObjects>
    </tns:create>
  </xsl:template>
</xsl:stylesheet>