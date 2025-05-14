<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.45 (Build 298) (http://www.copasi.org) at 2025-05-14T02:57:14Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="45" versionDevel="298" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Rate Law for Th2 cells" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_81">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (s4*I4*M/(c4 + I4))*(1/(1+T1/g1))*(1/(1+Tr/gr2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_677" name="s4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="I4" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_675" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_674" name="c4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_673" name="T1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_672" name="g1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_671" name="Tr" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_670" name="gr2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Rate Law for Th17 cells" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_82">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((s21*I21/(c21 + I21) + s6*I6/(c6+I6))*(Ib/(cb + Ib))*(M/((1+Ig/cg)*(1+I4/c4))))*(1/(1+Tr/gr17))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_683" name="s21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="I21" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_681" name="c21" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_680" name="s6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_679" name="I6" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_678" name="c6" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_668" name="Ib" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_669" name="cb" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_684" name="M" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_685" name="Ig" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_686" name="cg" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_687" name="I4" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_688" name="c4" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_689" name="Tr" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_690" name="gr17" order="14" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Rate Law for Thr cells" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_83">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ((sb*Ib/(cb+Ib) + s10*I10/(c10+I10))*(I2/(c2+I2))*(M/(1+Ia/ca)))*(1/(1+T17/g17))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_705" name="sb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_704" name="Ib" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_703" name="cb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_702" name="s10" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_701" name="I10" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_700" name="c10" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_699" name="I2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_698" name="c2" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_697" name="M" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_696" name="Ia" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_695" name="ca" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_694" name="T17" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_693" name="g17" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="activated first order reaction" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_84">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sigma * act / (zeta+act)*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_716" name="sigma" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_715" name="act" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_714" name="zeta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_713" name="S" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Rate Law for Prod of I10 from Tr" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_85">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v10r*(1 + n2r*(I2/(c2 + I2)))*Tr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_709" name="v10r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_710" name="n2r" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_711" name="I2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_712" name="c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_708" name="Tr" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Rate Law for Prod of I12 from M1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_86">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v12m*M1/(1 + I10/c10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_717" name="v12m" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_692" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_691" name="I10" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_706" name="c10" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Rate Law for Differentiation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_87">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        base_mac*(f + delta_m_cit*cit/(zet_cit + cit))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_720" name="base_mac" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_719" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_718" name="delta_m_cit" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_707" name="cit" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_721" name="zet_cit" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Rate Law for Induction of T1 from M" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_88">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (s12*I12/(c12 + I12)*(1/(1 + I10/c10))*M)*(1/(1 + T2/g2))*(1/(1+Tr/gr1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_726" name="T2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_725" name="g2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_724" name="Tr" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_723" name="gr1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_722" name="s12" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_727" name="I12" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_728" name="c12" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_729" name="I10" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_730" name="c10" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_731" name="M" order="9" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Rate Law for Proliferation of T1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_89">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ( s2*I2*T1/(c2 + I2))*(1/(1 + T2/g2))*(1/(1+Tr/gr1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_741" name="s2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_740" name="I2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_739" name="T1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_738" name="c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_737" name="T2" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_736" name="g2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_735" name="Tr" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_734" name="gr1" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Lo 2016 Healthy" simulationType="time" timeUnit="d" volumeUnit="mm³" areaUnit="mm²" lengthUnit="mm" quantityUnit="g" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO:0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1371/journal.pone.0165782"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:28152078"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2024-08-28T10:13:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>banerjeea@mpip-mainz.mpg.de</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Banerjee</vCard:Family>
            <vCard:Given>Atreyee</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Mainz Universität</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>wehling@bmedx.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Wehling</vCard:Family>
            <vCard:Given>Lilija</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Virtual Patient Engine
BioMed X Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>balaji-kuttae@bmedx.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Balaji Kuttae</vCard:Family>
            <vCard:Given>Sanjana</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Virtual Patient Engine
BioMed X Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>bastien_chassagnol@laposte.net</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>chassagnol</vCard:Family>
            <vCard:Given>bastien</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Sorbonne Université</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>oria.gasparini@stud.uni-heidelberg.de</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>gasparini</vCard:Family>
            <vCard:Given>soria</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Heidelberg Universität</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2024-10-29T16:03:51</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:doid:DOID:0050589"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Ig" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P01579" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="M1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is rdf:resource="urn:miriam:snomedct:SNOMEDCT:86373002" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="I2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P60568" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="T1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000545" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="I4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P05112" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="T2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000546" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="M2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is rdf:resource="urn:miriam:snomedct:SNOMEDCT:86373002" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="I21" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9HBE4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="M" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is rdf:resource="urn:miriam:snomedct:SNOMEDCT:58986001" />
    <CopasiMT:is rdf:resource="urn:miriam:snomedct:SNOMEDCT:86373002" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[M1],Reference=Concentration>+&lt;CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[M2],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="I6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P05231" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Ia" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P01375" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="T17" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000899" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Tr" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is rdf:resource="urn:miriam:cl:CL:0000815" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Ib" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P61812" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="I10" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P22301" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="I12" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is rdf:resource="urn:miriam:snomedct:SNOMEDCT:6411000" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="M0" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is rdf:resource="urn:miriam:snomedct:SNOMEDCT:58986001" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Induction of Tr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_0" name="sb" value="14.02"/>
          <Constant key="Parameter_1" name="cb" value="6.77e-12"/>
          <Constant key="Parameter_2" name="s10" value="14.02"/>
          <Constant key="Parameter_3" name="c10" value="1.54e-06"/>
          <Constant key="Parameter_4" name="c2" value="6.86e-08"/>
          <Constant key="Parameter_5" name="ca" value="9.75e-06"/>
          <Constant key="Parameter_6" name="g17" value="0.337"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Parameter_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Parameter_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Parameter_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Parameter_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="Parameter_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Parameter_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Parameter_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Induction of T2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7" name="s4" value="1.94"/>
          <Constant key="Parameter_8" name="c4" value="9.7e-09"/>
          <Constant key="Parameter_9" name="g1" value="0.183"/>
          <Constant key="Parameter_10" name="gr2" value="0.0606"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Parameter_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Parameter_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Parameter_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Parameter_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Induction of T17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_11" name="s21" value="156.17"/>
          <Constant key="Parameter_12" name="c21" value="4.25e-06"/>
          <Constant key="Parameter_13" name="s6" value="156.17"/>
          <Constant key="Parameter_14" name="c6" value="8e-06"/>
          <Constant key="Parameter_15" name="cb" value="6.77e-12"/>
          <Constant key="Parameter_16" name="cg" value="2.58e-06"/>
          <Constant key="Parameter_17" name="c4" value="9.7e-09"/>
          <Constant key="Parameter_18" name="gr17" value="0.0606"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Parameter_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Parameter_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Parameter_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Parameter_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Parameter_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Parameter_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Parameter_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Parameter_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Prod of Ig from M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19" name="k1" value="8.2e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Prod of Ig from T1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_20" name="k1" value="4.1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Decay of Ig" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_21" name="k1" value="29.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Prod of I2 from T1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_22" name="k1" value="4.1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Decay of I2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_23" name="k1" value="537.46"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Prof of I4 from M2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_24" name="k1" value="5.83e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Prod of I4 from T2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_25" name="k1" value="0.000175"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Decay of I4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_26" name="k1" value="349.37"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Prod of I21 from T17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_27" name="k1" value="0.000805"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Decay of I21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_28" name="k1" value="63.98"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Prod of I6 from M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_29" name="k1" value="0.00363"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Decay of I6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_30" name="k1" value="29.11"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Prod of Ia from M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_31" name="k1" value="0.021"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Prod of Ia from T1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_32" name="k1" value="0.0735"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Decay of Ia" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_33" name="k1" value="388.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Prod of Ib from M2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_34" name="k1" value="5.6e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Prod of Ib from Tr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_35" name="k1" value="3.9e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Decay of Ib" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_36" name="k1" value="349.37"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Prod of I10 from M2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_37" name="k1" value="0.000372"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Prod of I10 from Tr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_38" name="v10r" value="0.00112"/>
          <Constant key="Parameter_39" name="n2r" value="3"/>
          <Constant key="Parameter_40" name="c2" value="6.86e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="Parameter_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="Parameter_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="Parameter_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Decay of I10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_41" name="k1" value="116.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Prod of I12 from M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_42" name="v12m" value="0.000265"/>
          <Constant key="Parameter_43" name="c10" value="1.54e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Parameter_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="Parameter_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Decay of I12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_44" name="k1" value="8.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Diff of M0 to M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_45" name="f" value="1"/>
          <Constant key="Parameter_46" name="delta_m_cit" value="2.4"/>
          <Constant key="Parameter_47" name="zet_cit" value="9.75e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Parameter_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Parameter_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Parameter_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Diff of M1 to M2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_48" name="sigma" value="24"/>
          <Constant key="Parameter_49" name="zeta" value="6.77e-12"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Parameter_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Parameter_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Diff of M2 to M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_50" name="sigma" value="24"/>
          <Constant key="Parameter_51" name="zeta" value="2.58e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Parameter_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Parameter_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Death of M1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_52" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Diff of M0 to M2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_53" name="f" value="10"/>
          <Constant key="Parameter_54" name="delta_m_cit" value="24"/>
          <Constant key="Parameter_55" name="zet_cit" value="1.54e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Parameter_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Parameter_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Parameter_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Death of M2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_56" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Induction of T1 from M" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_57" name="g2" value="0.0535"/>
          <Constant key="Parameter_58" name="gr1" value="0.0606"/>
          <Constant key="Parameter_59" name="s12" value="10.93"/>
          <Constant key="Parameter_60" name="c12" value="4.9e-08"/>
          <Constant key="Parameter_61" name="c10" value="1.54e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Parameter_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Parameter_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Parameter_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Parameter_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Parameter_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Proliferation of T1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_62" name="s2" value="1.23"/>
          <Constant key="Parameter_63" name="c2" value="6.86e-08"/>
          <Constant key="Parameter_64" name="g2" value="0.183"/>
          <Constant key="Parameter_65" name="gr1" value="0.0606"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Parameter_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Parameter_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Parameter_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="Parameter_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Death of T1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_66" name="k1" value="1.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Death of T2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_67" name="k1" value="1.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Death of T17" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_68" name="k1" value="1.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Death of Tr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_69" name="k1" value="1.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[Ig]" value="2.5799999999999999e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[M1]" value="0.023399999999999921" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I2]" value="6.8599999999999304e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[T1]" value="0.045799999999999993" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I4]" value="9.6999999999999462e-09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[T2]" value="0.0134" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[M2]" value="0.025000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I21]" value="4.25e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[M]" value="0.048399999999999922" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I6]" value="7.9999999999999996e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[Ia]" value="9.7499999999998948e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[T17]" value="19.999999999999961" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[Tr]" value="0.060599999999999925" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[Ib]" value="6.7699999999999689e-12" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I10]" value="1.5399999999999836e-06" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I12]" value="4.8999999999999367e-08" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[M0]" value="0.0015" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=sb" value="14.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=cb" value="6.7699999999999996e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=s10" value="14.02" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=c10" value="1.5400000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=c2" value="6.8600000000000005e-08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=ca" value="9.7499999999999998e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=g17" value="0.33700000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T2],ParameterGroup=Parameters,Parameter=s4" value="1.9399999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T2],ParameterGroup=Parameters,Parameter=c4" value="9.6999999999999992e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T2],ParameterGroup=Parameters,Parameter=g1" value="0.183" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T2],ParameterGroup=Parameters,Parameter=gr2" value="0.060600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=s21" value="156.16999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=c21" value="4.25e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=s6" value="156.16999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=c6" value="7.9999999999999996e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=cb" value="6.7699999999999996e-12" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=cg" value="2.5799999999999999e-06" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=c4" value="9.6999999999999992e-09" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=gr17" value="0.060600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ig from M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ig from M1],ParameterGroup=Parameters,Parameter=k1" value="8.1999999999999994e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ig from T1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ig from T1],ParameterGroup=Parameters,Parameter=k1" value="4.1e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of Ig]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of Ig],ParameterGroup=Parameters,Parameter=k1" value="29.120000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I2 from T1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I2 from T1],ParameterGroup=Parameters,Parameter=k1" value="4.1e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I2],ParameterGroup=Parameters,Parameter=k1" value="537.46000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prof of I4 from M2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prof of I4 from M2],ParameterGroup=Parameters,Parameter=k1" value="5.8300000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I4 from T2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I4 from T2],ParameterGroup=Parameters,Parameter=k1" value="0.000175" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I4],ParameterGroup=Parameters,Parameter=k1" value="349.37" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I21 from T17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I21 from T17],ParameterGroup=Parameters,Parameter=k1" value="0.00080500000000000005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I21],ParameterGroup=Parameters,Parameter=k1" value="63.979999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I6 from M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I6 from M1],ParameterGroup=Parameters,Parameter=k1" value="0.00363" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I6],ParameterGroup=Parameters,Parameter=k1" value="29.109999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ia from M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ia from M1],ParameterGroup=Parameters,Parameter=k1" value="0.021000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ia from T1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ia from T1],ParameterGroup=Parameters,Parameter=k1" value="0.073499999999999996" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of Ia]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of Ia],ParameterGroup=Parameters,Parameter=k1" value="388.14999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ib from M2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ib from M2],ParameterGroup=Parameters,Parameter=k1" value="5.5999999999999997e-09" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ib from Tr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ib from Tr],ParameterGroup=Parameters,Parameter=k1" value="3.8999999999999998e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of Ib]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of Ib],ParameterGroup=Parameters,Parameter=k1" value="349.37" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from M2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from M2],ParameterGroup=Parameters,Parameter=k1" value="0.00037199999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from Tr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from Tr],ParameterGroup=Parameters,Parameter=v10r" value="0.0011199999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from Tr],ParameterGroup=Parameters,Parameter=n2r" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from Tr],ParameterGroup=Parameters,Parameter=c2" value="6.8600000000000005e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I10],ParameterGroup=Parameters,Parameter=k1" value="116.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I12 from M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I12 from M1],ParameterGroup=Parameters,Parameter=v12m" value="0.00026499999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I12 from M1],ParameterGroup=Parameters,Parameter=c10" value="1.5400000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Decay of I12],ParameterGroup=Parameters,Parameter=k1" value="8.3300000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M1],ParameterGroup=Parameters,Parameter=f" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M1],ParameterGroup=Parameters,Parameter=delta_m_cit" value="2.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M1],ParameterGroup=Parameters,Parameter=zet_cit" value="9.7499999999999998e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M1 to M2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M1 to M2],ParameterGroup=Parameters,Parameter=sigma" value="24" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M1 to M2],ParameterGroup=Parameters,Parameter=zeta" value="6.7699999999999996e-12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M2 to M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M2 to M1],ParameterGroup=Parameters,Parameter=sigma" value="24" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M2 to M1],ParameterGroup=Parameters,Parameter=zeta" value="2.5799999999999999e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of M1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of M1],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M2],ParameterGroup=Parameters,Parameter=f" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M2],ParameterGroup=Parameters,Parameter=delta_m_cit" value="24" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Diff of M0 to M2],ParameterGroup=Parameters,Parameter=zet_cit" value="1.5400000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of M2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of M2],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M],ParameterGroup=Parameters,Parameter=g2" value="0.053499999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M],ParameterGroup=Parameters,Parameter=gr1" value="0.060600000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M],ParameterGroup=Parameters,Parameter=s12" value="10.93" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M],ParameterGroup=Parameters,Parameter=c12" value="4.9000000000000002e-08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M],ParameterGroup=Parameters,Parameter=c10" value="1.5400000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Proliferation of T1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Proliferation of T1],ParameterGroup=Parameters,Parameter=s2" value="1.23" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Proliferation of T1],ParameterGroup=Parameters,Parameter=c2" value="6.8600000000000005e-08" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Proliferation of T1],ParameterGroup=Parameters,Parameter=g2" value="0.183" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Proliferation of T1],ParameterGroup=Parameters,Parameter=gr1" value="0.060600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of T1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of T1],ParameterGroup=Parameters,Parameter=k1" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of T2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of T2],ParameterGroup=Parameters,Parameter=k1" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of T17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of T17],ParameterGroup=Parameters,Parameter=k1" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of Tr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Death of Tr],ParameterGroup=Parameters,Parameter=k1" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0.023399999999999921 2.5799999999999999e-06 0.045799999999999993 9.6999999999999462e-09 0.025000000000000001 9.7499999999998948e-06 6.7699999999999689e-12 1.5399999999999836e-06 7.9999999999999996e-06 0.0134 19.999999999999961 0.060599999999999925 6.8599999999999304e-08 4.25e-06 4.8999999999999367e-08 0.048399999999999922 0.0015 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="2000"/>
        <Parameter name="StepSize" type="float" value="0.5"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="DisplayPoplations" type="bool" value="0"/>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T1 from M],ParameterGroup=Parameters,Parameter=s12,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="10.93"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=s21,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="156.16999999999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T17],ParameterGroup=Parameters,Parameter=s6,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="156.16999999999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of T2],ParameterGroup=Parameters,Parameter=s4,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="1.9399999999999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=s10,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="14.02"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Induction of Tr],ParameterGroup=Parameters,Parameter=sb,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="14.02"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of I10 from Tr],ParameterGroup=Parameters,Parameter=v10r,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="0.0011199999999999999"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ia from T1],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="0.073499999999999996"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ib from Tr],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="3.8999999999999998e-08"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Reactions[Prod of Ig from T1],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="LowerBound" type="cn" value="1e-15"/>
            <Parameter name="UpperBound" type="cn" value="1e04"/>
            <Parameter name="StartValue" type="float" value="4.1e-05"/>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="DisplayPoplations" type="bool" value="0"/>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="File Name" type="file" value="../data/type1_species.csv"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="2"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="0"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="0"/>
            <Parameter name="Separator" type="string" value=","/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="10"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I6],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I10],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Lo 2016 Healthy,Vector=Compartments[compartment],Vector=Metabolites[I4],Reference=Concentration"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Levenberg - Marquardt" type="LevenbergMarquardt">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="2000"/>
        <Parameter name="Tolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Modulation" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Stop after # stalled iterations" type="unsignedInteger" value="0"/>
        <Parameter name="Initial Lambda" type="float" value="1"/>
        <Parameter name="Lambda Decrease" type="float" value="2"/>
        <Parameter name="Lambda Increase" type="float" value="4"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="COPASI autolayout">
      <Dimensions width="734.54014624351112" height="723.39700321247983"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="495.63535346977551" y="450.02336008179918"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="240.53938061916961" y="497.39383117752368"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="287.73652035655505" y="354.36872517801385"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="310.43191067537737" y="400.18726653510566"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="191.87488223751461" y="144.98138828932861"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="462.45966986453277" y="259.264210806954"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="377.40808019866017" y="226.58941173875064"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="292.03470100926461" y="220.47457303060037"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="401.38718836518819" y="417.51203206357604"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="487.77388824739865" y="562.55103431837961"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="160.06506766203711" y="304.01174425785757"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="MetabGlyph" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="135.59483923262997" y="363.49889866491321"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="356.04998975923991" y="425.46661609368857"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="MetabGlyph" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="324.34160702173358" y="197.25161196515728"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="MetabGlyph" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="432.96960942940677" y="220.17822624437576"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="MetabGlyph" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="178.02583152860097" y="343.51600532415068"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="MetabGlyph" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="136.39211966787479" y="119.40893882281671"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="451.67055277187865" y="470.06059000860114"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="126.67212632346127" y="0"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="510.29739665111811" y="313.54603378936372"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="6.2619087639668578" y="301.04373583976667"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="81.329872179019731" y="496.78803094748037"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="157.75816616745942" y="644.9408491967024"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="507.42898469337342" y="81.39840573494439"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="661.67098644145335" y="251.9774706756034"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="547.80650674222852" y="358.60688774103619"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="1.8922187093412504" y="359.7669762229234"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="600.90796467462678" y="130.9754146596606"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="326.93931356538451" y="2.5526989698573743"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="575.99415119689729" y="728.41642049296024"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="416.93743348697899" y="49.972450663826748"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="298.86402338562038" y="599.17161828272583"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="373.38064452547951" y="649.33244115087655"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="621.17571122247318" y="401.84461900276256"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="695.70805173551526" y="509.49884506257695"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="MetabGlyph" objectRole="invisible">
          <BoundingBox>
            <Position x="437.24103798704527" y="584.34483803973671"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_39" name="ReactionGlyph" reaction="Reaction_0">
          <BoundingBox>
            <Position x="380.88433291349065" y="388.13656274553796"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="387.07126501831573" y="390.95522891921274"/>
                <End x="374.69740080866558" y="385.31789657186317"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_40" name="MetabReferenceGlyph" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="387.07126501831573" y="390.95522891921274"/>
                    <End x="448.25007747433017" y="465.06059000860114"/>
                    <BasePoint1 x="399.44512922796588" y="396.59256126656231"/>
                    <BasePoint2 x="426.9410694035605" y="432.23590872441912"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="374.69740080866558" y="385.31789657186317"/>
                    <End x="347.09323874877782" y="395.18726653510566"/>
                    <BasePoint1 x="362.32353659901543" y="379.6805642245136"/>
                    <BasePoint2 x="351.61492162148409" y="386.02458229297224"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_42" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="347.17567350801562" y="230.25161196515728"/>
                    <End x="385.0301920514363" y="379.03646098740842"/>
                    <BasePoint1 x="366.10293277972596" y="304.64403647628285"/>
                    <BasePoint2 x="389.17605118938195" y="369.93635922927888"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_43" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="235.02583152860097" y="364.64542224780848"/>
                    <End x="376.738473775545" y="397.2366645036675"/>
                    <BasePoint1 x="305.88215265207299" y="380.94104337573799"/>
                    <BasePoint2 x="372.59261463759935" y="406.33676626179704"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="278.21210757451945" y="492.39383117752368"/>
                    <End x="376.738473775545" y="397.2366645036675"/>
                    <BasePoint1 x="327.47529067503223" y="444.81524784059559"/>
                    <BasePoint2 x="372.59261463759935" y="406.33676626179704"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_45" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="320.73652035655505" y="375.68174600192941"/>
                    <End x="376.738473775545" y="397.2366645036675"/>
                    <BasePoint1 x="348.73749706605003" y="386.45920525279848"/>
                    <BasePoint2 x="372.59261463759935" y="406.33676626179704"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_46" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="442.32081612881262" y="253.17822624437576"/>
                    <End x="385.0301920514363" y="379.03646098740842"/>
                    <BasePoint1 x="413.67550409012449" y="316.10734361589209"/>
                    <BasePoint2 x="389.17605118938195" y="369.93635922927888"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="490.63535346977551" y="449.73466340806038"/>
                    <End x="376.738473775545" y="397.2366645036675"/>
                    <BasePoint1 x="433.68691362266026" y="423.48566395586397"/>
                    <BasePoint2 x="372.59261463759935" y="406.33676626179704"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_48" name="ReactionGlyph" reaction="Reaction_24">
          <BoundingBox>
            <Position x="251.27420056390474" y="308.58013138013121"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="254.98519710832062" y="305.0045232392734"/>
                <End x="247.56320401948886" y="312.15573952098902"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_49" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="254.98519710832062" y="305.0045232392734"/>
                    <End x="295.75668298395919" y="253.47457303060037"/>
                    <BasePoint1 x="262.40719019715237" y="297.85330695755778"/>
                    <BasePoint2 x="280.93743486276367" y="273.87613592365017"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_50" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="247.56320401948886" y="312.15573952098902"/>
                    <End x="294.38058087142707" y="253.47457303060037"/>
                    <BasePoint1 x="240.14121093065714" y="319.30695580270464"/>
                    <BasePoint2 x="265.40539762883418" y="288.17856848708141"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="247.56320401948886" y="312.15573952098902"/>
                    <End x="187.24067590449178" y="358.49889866491321"/>
                    <BasePoint1 x="240.14121093065714" y="319.30695580270464"/>
                    <BasePoint2 x="211.83544514536652" y="340.69073130423783"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_52" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="291.37700899896453" y="253.47457303060037"/>
                    <End x="244.33571397772479" y="301.37892287784484"/>
                    <BasePoint1 x="267.85636148834465" y="277.42674795422261"/>
                    <BasePoint2 x="237.39722739154485" y="294.17771437555848"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_53" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="217.66900166067742" y="338.51600532415068"/>
                    <End x="244.33571397772479" y="301.37892287784484"/>
                    <BasePoint1 x="231.00235781920111" y="319.94746410099776"/>
                    <BasePoint2 x="237.39722739154485" y="294.17771437555848"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_54" name="ReactionGlyph" reaction="Reaction_31">
          <BoundingBox>
            <Position x="170.65789692142062" y="67.164465551546527"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="174.79303471712328" y="75.088534966012958"/>
                <End x="166.52275912571795" y="59.240396137080097"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_55" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="174.79303471712328" y="75.088534966012958"/>
                    <End x="202.38833650892923" y="139.98138828932861"/>
                    <BasePoint1 x="183.0633103085286" y="90.936673794945818"/>
                    <BasePoint2 x="194.79339230658024" y="119.42106574937043"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_56" name="MetabReferenceGlyph" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="166.52275912571795" y="59.240396137080097"/>
                    <End x="131.15750679508344" y="6"/>
                    <BasePoint1 x="158.25248353431263" y="43.392257308147236"/>
                    <BasePoint2 x="142.63742626684669" y="20.734093946840403"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_57" name="ReactionGlyph" reaction="Reaction_26">
          <BoundingBox>
            <Position x="256.80773830688122" y="160.30551027630463"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="249.02560923981173" y="155.25222856591546"/>
                <End x="264.58986737395071" y="165.3587919866938"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_58" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="249.02560923981173" y="155.25222856591546"/>
                    <End x="177.39211966787479" y="136.82296853456026"/>
                    <BasePoint1 x="233.46135110567275" y="145.14566514513709"/>
                    <BasePoint2 x="201.53567085323903" y="138.45767598465409"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_59" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="264.58986737395071" y="165.3587919866938"/>
                    <End x="300.41364590312463" y="215.47457303060037"/>
                    <BasePoint1 x="280.15412550808969" y="175.46535540747217"/>
                    <BasePoint2 x="294.17495023914194" y="197.99660507423084"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_60" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="427.96960942940677" y="224.1527184195094"/>
                    <End x="262.25375570150067" y="151.91856240848628"/>
                    <BasePoint1 x="345.11168256545375" y="188.03564041399784"/>
                    <BasePoint2 x="267.69977309612011" y="143.53161454066793"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_61" name="ReactionGlyph" reaction="Reaction_1">
          <BoundingBox>
            <Position x="410.86474273078602" y="344.0443339196172"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="417.70211307537994" y="337.77330480440094"/>
                <End x="404.0273723861921" y="350.31536303483347"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_62" name="MetabReferenceGlyph" metaboliteGlyph="Layout_22" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="417.70211307537994" y="337.77330480440094"/>
                    <End x="505.29739665111811" y="314.82062771782887"/>
                    <BasePoint1 x="431.37685376456778" y="325.23124657396846"/>
                    <BasePoint2 x="471.75581038013991" y="316.89042258829056"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_63" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="404.0273723861921" y="350.31536303483347"/>
                    <End x="378.09324067071668" y="420.46661609368857"/>
                    <BasePoint1 x="390.35263169700426" y="362.85742126526594"/>
                    <BasePoint2 x="380.80425101156357" y="394.79753323708542"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="397.12791414086553" y="259.58941173875064"/>
                    <End x="404.105482096895" y="336.67463951054356"/>
                    <BasePoint1 x="400.61669811888027" y="298.1320256246471"/>
                    <BasePoint2 x="397.34622146300399" y="329.30494510146991"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_65" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="320.73652035655505" y="362.48620358705165"/>
                    <End x="404.105482096895" y="336.67463951054356"/>
                    <BasePoint1 x="362.42100122672502" y="349.58042154879763"/>
                    <BasePoint2 x="397.34622146300399" y="329.30494510146991"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_66" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="418.96894429607761" y="412.51203206357604"/>
                    <End x="417.62400336467704" y="351.41402832869085"/>
                    <BasePoint1 x="418.29647383037729" y="381.96303019613345"/>
                    <BasePoint2 x="424.38326399856805" y="358.78372273776449"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="346.98111887797415" y="395.18726653510566"/>
                    <End x="404.105482096895" y="336.67463951054356"/>
                    <BasePoint1 x="375.54330048743458" y="365.93095302282461"/>
                    <BasePoint2 x="397.34622146300399" y="329.30494510146991"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_68" name="ReactionGlyph" reaction="Reaction_21">
          <BoundingBox>
            <Position x="175.26329866435844" y="245.96811299008368"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="175.4095249320813" y="241.00474756421312"/>
                <End x="175.11707239663559" y="250.93147841595425"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_69" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="175.4095249320813" y="241.00474756421312"/>
                    <End x="200.86911865563064" y="177.98138828932861"/>
                    <BasePoint1 x="175.70197746752697" y="231.07801671247202"/>
                    <BasePoint2 x="188.35866119544022" y="202.04801978796502"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_70" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="175.11707239663559" y="250.93147841595425"/>
                    <End x="203.33801763225193" y="177.98138828932861"/>
                    <BasePoint1 x="174.82461986118992" y="260.85820926769537"/>
                    <BasePoint2 x="189.00820561285951" y="221.90148149144724"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_71" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="175.11707239663559" y="250.93147841595425"/>
                    <End x="198.28575629083377" y="338.51600532415068"/>
                    <BasePoint1 x="174.82461986118992" y="260.85820926769537"/>
                    <BasePoint2 x="186.4820749421504" y="302.16879000885831"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_72" name="ReactionGlyph" reaction="Reaction_25">
          <BoundingBox>
            <Position x="67.718786846768126" y="373.42260629588418"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="75.460433370201287" y="377.22036443714148"/>
                <End x="59.977140323334972" y="369.62484815462687"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_73" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="75.460433370201287" y="377.22036443714148"/>
                    <End x="130.59483923262997" y="380.70941347009642"/>
                    <BasePoint1 x="90.943726417067595" y="384.81588071965615"/>
                    <BasePoint2 x="114.64010608656537" y="384.66152616550494"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_74" name="MetabReferenceGlyph" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="59.977140323334972" y="369.62484815462687"/>
                    <End x="10.192901850449507" y="307.04373583976667"/>
                    <BasePoint1 x="44.493847276468657" y="362.02933187211221"/>
                    <BasePoint2 x="23.472551301742506" y="332.63765478531081"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_75" name="ReactionGlyph" reaction="Reaction_32">
          <BoundingBox>
            <Position x="289.92409400535144" y="438.86752562281254"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="286.98282730513563" y="437.28894295067346"/>
                <End x="292.86536070556724" y="440.44610829495161"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_76" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="286.98282730513563" y="437.28894295067346"/>
                    <End x="295.77438374478248" y="387.36872517801385"/>
                    <BasePoint1 x="281.10029390470396" y="434.13177760639536"/>
                    <BasePoint2 x="286.96670547463532" y="409.96096005613504"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_77" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="292.86536070556724" y="440.44610829495161"/>
                    <End x="300.9817620716716" y="387.36872517801385"/>
                    <BasePoint1 x="298.74789410599891" y="443.60327363922971"/>
                    <BasePoint2 x="301.33546143894318" y="416.27529074469135"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_78" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="292.86536070556724" y="440.44610829495161"/>
                    <End x="396.38718836518819" y="433.81723915176201"/>
                    <BasePoint1 x="298.74789410599891" y="443.60327363922971"/>
                    <BasePoint2 x="349.03817458570143" y="439.49954773156537"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_79" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="351.04998975923991" y="436.74061469168777"/>
                    <End x="294.65306653410488" y="430.05634983167687"/>
                    <BasePoint1 x="322.85152814667242" y="433.39848226168232"/>
                    <BasePoint2 x="299.38203906285833" y="421.2451740405412"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_80" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="305.43191067537737" y="424.99251831621024"/>
                    <End x="294.65306653410488" y="430.05634983167687"/>
                    <BasePoint1 x="300.04248860474115" y="427.52443407394355"/>
                    <BasePoint2 x="299.38203906285833" y="421.2451740405412"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_81" name="MetabReferenceGlyph" metaboliteGlyph="Layout_14" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="192.59483923262997" y="395.10058893391954"/>
                    <End x="285.19512147659799" y="447.6787014139482"/>
                    <BasePoint1 x="238.89498035461398" y="421.3896451739339"/>
                    <BasePoint2 x="280.46614894784454" y="456.48987720508387"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_82" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="227.76320797469606" y="376.51600532415068"/>
                    <End x="294.65306653410488" y="430.05634983167687"/>
                    <BasePoint1 x="261.20813725440047" y="403.2861775779138"/>
                    <BasePoint2 x="299.38203906285833" y="421.2451740405412"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="299.5547922809132" y="387.36872517801385"/>
                    <End x="294.65306653410488" y="430.05634983167687"/>
                    <BasePoint1 x="297.10392940750904" y="408.71253750484539"/>
                    <BasePoint2 x="299.38203906285833" y="421.2451740405412"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_84" name="ReactionGlyph" reaction="Reaction_22">
          <BoundingBox>
            <Position x="242.72529728263726" y="426.77766488611996"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="245.83544926130668" y="428.19444641639382"/>
                <End x="239.61514530396784" y="425.36088335584611"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_85" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="245.83544926130668" y="428.19444641639382"/>
                    <End x="305.43191067537737" y="419.25870637392785"/>
                    <BasePoint1 x="252.05575321864549" y="431.02800947694158"/>
                    <BasePoint2 x="280.29890793634615" y="425.85174869057164"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_86" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="239.61514530396784" y="425.36088335584611"/>
                    <End x="305.43191067537737" y="416.20564986530803"/>
                    <BasePoint1 x="233.39484134662902" y="422.52732029529835"/>
                    <BasePoint2 x="267.85830002166847" y="418.6580943151663"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="239.61514530396784" y="425.36088335584611"/>
                    <End x="212.60912486438693" y="376.51600532415068"/>
                    <BasePoint1 x="233.39484134662902" y="422.52732029529835"/>
                    <BasePoint2 x="221.44690711617326" y="398.81327204458762"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_88" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="253.51749954513161" y="492.39383117752368"/>
                    <End x="238.57980983340966" y="435.87793597045015"/>
                    <BasePoint1 x="246.04865468927062" y="464.13588357398692"/>
                    <BasePoint2 x="234.43432238418205" y="444.97820705478034"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_89" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="305.43191067537737" y="415.171472260629"/>
                    <End x="246.87078473186486" y="417.67739380178978"/>
                    <BasePoint1 x="276.15134770362113" y="416.42443303120939"/>
                    <BasePoint2 x="251.01627218109246" y="408.57712271745959"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_90" name="ReactionGlyph" reaction="Reaction_23">
          <BoundingBox>
            <Position x="144.45768872616463" y="443.40901194828803"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="150.5674866936437" y="436.42041066712153"/>
                <End x="138.34789075868557" y="450.39761322945452"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_91" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="150.5674866936437" y="436.42041066712153"/>
                    <End x="191.95791245087284" y="376.51600532415068"/>
                    <BasePoint1 x="162.78708262860184" y="422.44320810478854"/>
                    <BasePoint2 x="180.42739652347689" y="395.98530607388636"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_92" name="MetabReferenceGlyph" metaboliteGlyph="Layout_24" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="138.34789075868557" y="450.39761322945452"/>
                    <End x="87.329872179019731" y="493.20159462426881"/>
                    <BasePoint1 x="126.12829482372744" y="464.37481579178751"/>
                    <BasePoint2 x="103.67418451763405" y="482.28250584861138"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_93" name="ReactionGlyph" reaction="Reaction_7">
          <BoundingBox>
            <Position x="194.89872062102404" y="574.77529968589261"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="199.91278134360954" y="568.07294878493371"/>
                <End x="189.88465989843854" y="581.4776505868515"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_94" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="199.91278134360954" y="568.07294878493371"/>
                    <End x="237.20180594392227" y="530.39383117752368"/>
                    <BasePoint1 x="209.94090278878056" y="554.66824698301582"/>
                    <BasePoint2 x="226.07838472764416" y="539.17986362979036"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_95" name="MetabReferenceGlyph" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="189.88465989843854" y="581.4776505868515"/>
                    <End x="160.60774250124996" y="639.9408491967024"/>
                    <BasePoint1 x="179.85653845326752" y="594.88235238876939"/>
                    <BasePoint2 x="167.725110115966" y="620.76277624321528"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_96" name="ReactionGlyph" reaction="Reaction_10">
          <BoundingBox>
            <Position x="462.46213210763813" y="154.60167013484715"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="456.83608688290246" y="162.53622043503748"/>
                <End x="468.08817733237379" y="146.66711983465683"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_97" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="456.83608688290246" y="162.53622043503748"/>
                    <End x="410.73904986755582" y="221.58941173875064"/>
                    <BasePoint1 x="445.58399643343114" y="178.4053210354181"/>
                    <BasePoint2 x="425.34850053812568" y="203.96464153717955"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_98" name="MetabReferenceGlyph" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="468.08817733237379" y="146.66711983465683"/>
                    <End x="504.71345942106109" y="87.39840573494439"/>
                    <BasePoint1 x="479.34026778184511" y="130.79801923427621"/>
                    <BasePoint2 x="494.83988621382093" y="105.13093733451514"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_99" name="ReactionGlyph" reaction="Reaction_30">
          <BoundingBox>
            <Position x="129.56067347923999" y="205.4855667593929"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="126.786535350758" y="204.20694428606731"/>
                <End x="132.33481160772197" y="206.76418923271848"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_100" name="MetabReferenceGlyph" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="126.786535350758" y="204.20694428606731"/>
                    <End x="145.16122384932208" y="152.40893882281671"/>
                    <BasePoint1 x="121.23825909379401" y="201.64969933941612"/>
                    <BasePoint2 x="131.81267240731705" y="176.39000784445363"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_101" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="132.33481160772197" y="206.76418923271848"/>
                    <End x="186.87488223751461" y="175.06406917758179"/>
                    <BasePoint1 x="137.88308786468596" y="209.32143417936967"/>
                    <BasePoint2 x="163.76605411534126" y="192.83206291513852"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_102" name="MetabReferenceGlyph" metaboliteGlyph="Layout_18" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="193.57194350188135" y="338.51600532415068"/>
                    <End x="125.37481244288212" y="214.56733791838499"/>
                    <BasePoint1 x="159.47337797238174" y="276.54167162126782"/>
                    <BasePoint2 x="121.18895140652424" y="223.64910907737709"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_103" name="ReactionGlyph" reaction="Reaction_28">
          <BoundingBox>
            <Position x="321.67329545734538" y="157.30065383733199"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="316.66530451875786" y="153.5259946002684"/>
                <End x="326.68128639593289" y="161.07531307439558"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_104" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="316.66530451875786" y="153.5259946002684"/>
                    <End x="232.87488223751461" y="155.89060958263266"/>
                    <BasePoint1 x="306.64932264158284" y="145.97667612614123"/>
                    <BasePoint2 x="267.25810697025497" y="149.04631323585517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_105" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="326.68128639593289" y="161.07531307439558"/>
                    <End x="317.72777964549852" y="215.47457303060037"/>
                    <BasePoint1 x="336.69726827310791" y="168.62463154852276"/>
                    <BasePoint2 x="329.71651942859694" y="193.93693190809336"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_106" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="457.45966986453277" y="254.60294034923464"/>
                    <End x="327.6923278312679" y="149.31496355522907"/>
                    <BasePoint1 x="392.57599884790034" y="201.95895195223187"/>
                    <BasePoint2 x="333.71136020519043" y="141.32927327312615"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_107" name="ReactionGlyph" reaction="Reaction_4">
          <BoundingBox>
            <Position x="488.50382867577719" y="376.90425259579388"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="486.97701663829355" y="380.86044812720945"/>
                <End x="490.03064071326082" y="372.9480570643783"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_108" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="486.97701663829355" y="380.86044812720945"/>
                    <End x="442.38718836518819" y="416.28024940289583"/>
                    <BasePoint1 x="483.92339256332633" y="388.77283919004054"/>
                    <BasePoint2 x="462.39188444551542" y="404.504642062176"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_109" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="490.03064071326082" y="372.9480570643783"/>
                    <End x="440.4509819355406" y="412.51203206357604"/>
                    <BasePoint1 x="493.08426478822804" y="365.03566600154721"/>
                    <BasePoint2 x="467.53102938062614" y="386.79575126685381"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_110" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="490.03064071326082" y="372.9480570643783"/>
                    <End x="483.07341618730374" y="292.264210806954"/>
                    <BasePoint1 x="493.08426478822804" y="365.03566600154721"/>
                    <BasePoint2 x="488.84224650650771" y="326.67184063854279"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_111" name="ReactionGlyph" reaction="Reaction_9">
          <BoundingBox>
            <Position x="364.0004308707048" y="343.09659239842404"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="363.46647860971927" y="348.06852250729747"/>
                <End x="364.53438313169033" y="338.1246622895506"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_112" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="363.46647860971927" y="348.06852250729747"/>
                    <End x="371.3321826103292" y="420.46661609368857"/>
                    <BasePoint1 x="362.39857408774827" y="358.01238272504435"/>
                    <BasePoint2 x="366.59840221854597" y="391.72546446380318"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_113" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.53438313169033" y="338.1246622895506"/>
                    <End x="372.60770044845293" y="420.46661609368857"/>
                    <BasePoint1 x="365.60228765366134" y="328.18080207180373"/>
                    <BasePoint2 x="369.3719701815499" y="371.83774402830943"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_114" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.53438313169033" y="338.1246622895506"/>
                    <End x="388.94271806430351" y="259.58941173875064"/>
                    <BasePoint1 x="365.60228765366134" y="328.18080207180373"/>
                    <BasePoint2 x="377.53947898947519" y="291.39914185084046"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_115" name="ReactionGlyph" reaction="Reaction_5">
          <BoundingBox>
            <Position x="580.4481397142481" y="256.12411055279881"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="571.36257388540207" y="257.16344755936632"/>
                <End x="589.53370554309413" y="255.08477354623128"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_116" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="571.36257388540207" y="257.16344755936632"/>
                    <End x="503.45966986453277" y="268.82999943118818"/>
                    <BasePoint1 x="553.19144222771001" y="259.24212157250145"/>
                    <BasePoint2 x="523.78277313169838" y="264.55572900512857"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_117" name="MetabReferenceGlyph" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="589.53370554309413" y="255.08477354623128"/>
                    <End x="656.67098644145335" y="252.53085169770142"/>
                    <BasePoint1 x="607.70483720078619" y="253.0060995330962"/>
                    <BasePoint2 x="636.73069473554278" y="252.24880711211506"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_118" name="ReactionGlyph" reaction="Reaction_3">
          <BoundingBox>
            <Position x="382.1367487470734" y="278.18615942072938"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="377.87612452569169" y="277.21641847632054"/>
                <End x="386.3973729684551" y="279.15590036513822"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_119" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="377.87612452569169" y="277.21641847632054"/>
                    <End x="333.03470100926461" y="250.29472798873033"/>
                    <BasePoint1 x="369.35487608292829" y="275.27693658750286"/>
                    <BasePoint2 x="349.0644764354056" y="262.30096181591216"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_120" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="386.3973729684551" y="279.15590036513822"/>
                    <End x="333.03470100926461" y="247.10686672132033"/>
                    <BasePoint1 x="394.91862141121851" y="281.0953822539559"/>
                    <BasePoint2 x="366.10697332093241" y="264.58599495984254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_121" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="386.3973729684551" y="279.15590036513822"/>
                    <End x="457.45966986453277" y="275.36983081673617"/>
                    <BasePoint1 x="394.91862141121851" y="281.0953822539559"/>
                    <BasePoint2 x="428.31945774856649" y="278.71747700755043"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_122" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="437.76552671416357" y="382.70606777871217"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="439.0990843777862" y="377.46024416167404"/>
                <End x="436.43196905054094" y="387.95189139575029"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_123" name="MetabReferenceGlyph" metaboliteGlyph="Layout_28" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="439.0990843777862" y="377.46024416167404"/>
                    <End x="542.80650674222852" y="359.5127378998028"/>
                    <BasePoint1 x="441.76619970503151" y="366.96859692759773"/>
                    <BasePoint2 x="492.9531320554413" y="360.61775560518117"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_124" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="436.43196905054094" y="387.95189139575029"/>
                    <End x="496.17722537154935" y="445.02336008179918"/>
                    <BasePoint1 x="433.76485372329563" y="398.44353862982661"/>
                    <BasePoint2 x="464.30426071561118" y="424.35636116433193"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_125" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="507.19008689658654" y="557.55103431837961"/>
                    <End x="447.45726774796321" y="385.16983638265293"/>
                    <BasePoint1 x="477.32367732227488" y="471.36043535051624"/>
                    <BasePoint2 x="457.14900878176286" y="387.6336049865937"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_126" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="201.06506766203711" y="323.73675566719612"/>
                    <End x="428.07378568036393" y="380.2422991747714"/>
                    <BasePoint1 x="314.56942667120052" y="351.98952742098379"/>
                    <BasePoint2 x="418.38204464656428" y="377.77853057083064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_127" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="351.98066714635155" y="230.25161196515728"/>
                    <End x="428.07378568036393" y="380.2422991747714"/>
                    <BasePoint1 x="390.02722641335777" y="305.24695556996437"/>
                    <BasePoint2 x="418.38204464656428" y="377.77853057083064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_128" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="320.73652035655505" y="370.15440500383698"/>
                    <End x="428.07378568036393" y="380.2422991747714"/>
                    <BasePoint1 x="374.40515301845949" y="375.19835208930419"/>
                    <BasePoint2 x="418.38204464656428" y="377.77853057083064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_129" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="471.15559821130779" y="292.264210806954"/>
                    <End x="428.07378568036393" y="380.2422991747714"/>
                    <BasePoint1 x="449.61469194583583" y="336.25325499086273"/>
                    <BasePoint2 x="418.38204464656428" y="377.77853057083064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_130" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="399.85230197987261" y="259.58941173875064"/>
                    <End x="428.07378568036393" y="380.2422991747714"/>
                    <BasePoint1 x="413.96304383011829" y="319.91585545676105"/>
                    <BasePoint2 x="418.38204464656428" y="377.77853057083064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_131" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="351.43191067537737" y="406.35186350551982"/>
                    <End x="428.07378568036393" y="380.2422991747714"/>
                    <BasePoint1 x="389.75284817787065" y="393.29708134014561"/>
                    <BasePoint2 x="418.38204464656428" y="377.77853057083064"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_132" name="ReactionGlyph" reaction="Reaction_18">
          <BoundingBox>
            <Position x="276.67608647480847" y="114.8190929668217"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="273.36441835520299" y="113.51233737492598"/>
                <End x="279.98775459441396" y="116.12584855871742"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_133" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="273.36441835520299" y="113.51233737492598"/>
                    <End x="232.34576878229905" y="139.98138828932861"/>
                    <BasePoint1 x="266.74108211599201" y="110.89882619113455"/>
                    <BasePoint2 x="247.88759138934282" y="124.78672944428371"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_134" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="279.98775459441396" y="116.12584855871742"/>
                    <End x="232.87488223751461" y="146.91972048595252"/>
                    <BasePoint1 x="286.61109083362493" y="118.73935974250885"/>
                    <BasePoint2 x="261.39882059537251" y="133.48291791017854"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_135" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="279.98775459441396" y="116.12584855871742"/>
                    <End x="330.89577382522174" y="192.25161196515728"/>
                    <BasePoint1 x="286.61109083362493" y="118.73935974250885"/>
                    <BasePoint2 x="310.40926638922605" y="156.14886364978094"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_136" name="ReactionGlyph" reaction="Reaction_8">
          <BoundingBox>
            <Position x="288.28259632097615" y="195.62606070176116"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="283.64426637194754" y="193.58586011552561"/>
                <End x="292.92092627000477" y="197.66626128799672"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_137" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="283.64426637194754" y="193.58586011552561"/>
                    <End x="232.87488223751461" y="169.86716855909302"/>
                    <BasePoint1 x="274.36760647389025" y="189.50545894305449"/>
                    <BasePoint2 x="251.30207938118812" y="178.66621345795599"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_138" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="292.92092627000477" y="197.66626128799672"/>
                    <End x="232.87488223751461" y="169.6353364955699"/>
                    <BasePoint1 x="302.19758616806206" y="201.74666246046783"/>
                    <BasePoint2 x="269.85539917730262" y="186.71109977113662"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_139" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="292.92092627000477" y="197.66626128799672"/>
                    <End x="372.40808019866017" y="231.00483392171606"/>
                    <BasePoint1 x="302.19758616806206" y="201.74666246046783"/>
                    <BasePoint2 x="339.6219981578754" y="217.39584848420969"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_140" name="ReactionGlyph" reaction="Reaction_6">
          <BoundingBox>
            <Position x="341.19367873138435" y="476.89419928112511"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="345.21487392503479" y="474.89715430327641"/>
                <End x="337.17248353773391" y="478.89124425897381"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_141" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="345.21487392503479" y="474.89715430327641"/>
                    <End x="396.38718836518819" y="445.2122404867398"/>
                    <BasePoint1 x="353.25726431233574" y="470.903064347579"/>
                    <BasePoint2 x="376.83282393558716" y="457.05912992823505"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_142" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.17248353773391" y="478.89124425897381"/>
                    <End x="396.38718836518819" y="444.60336794873564"/>
                    <BasePoint1 x="329.13009315043297" y="482.88533421467122"/>
                    <BasePoint2 x="360.74804316098539" y="464.74287357062775"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_143" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.17248353773391" y="478.89124425897381"/>
                    <End x="281.53938061916961" y="502.10513856296461"/>
                    <BasePoint1 x="329.13009315043297" y="482.88533421467122"/>
                    <BasePoint2 x="303.3241392879761" y="493.49375887774227"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_144" name="ReactionGlyph" reaction="Reaction_27">
          <BoundingBox>
            <Position x="233.54437160569432" y="218.51993555107219"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="238.55236254428183" y="222.29459478813578"/>
                <End x="228.53638066710681" y="214.74527631400861"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_145" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="238.55236254428183" y="222.29459478813578"/>
                    <End x="287.03470100926461" y="232.74183368204939"/>
                    <BasePoint1 x="248.56834442145683" y="229.84391326226296"/>
                    <BasePoint2 x="270.30551818465449" y="233.18020309068797"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_146" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="228.53638066710681" y="214.74527631400861"/>
                    <End x="213.28183611115017" y="177.98138828932861"/>
                    <BasePoint1 x="218.52039878993182" y="207.19595783988143"/>
                    <BasePoint2 x="213.39712198124724" y="190.70134344607322"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_147" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="319.34160702173358" y="211.09107759576804"/>
                    <End x="239.56340397961682" y="210.53424526896927"/>
                    <BasePoint1 x="279.45250550067522" y="210.81266143236866"/>
                    <BasePoint2 x="245.58243635353932" y="202.54855498686635"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_148" name="ReactionGlyph" reaction="Reaction_13">
          <BoundingBox>
            <Position x="235.87297161548668" y="265.7416185530592"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="239.17221244916738" y="263.65318927237774"/>
                <End x="232.57373078180598" y="267.83004783374065"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_149" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="239.17221244916738" y="263.65318927237774"/>
                    <End x="287.03470100926461" y="243.42266784220064"/>
                    <BasePoint1 x="245.77069411652874" y="259.4763307110149"/>
                    <BasePoint2 x="268.05231797973704" y="250.40528463626703"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_150" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="232.57373078180598" y="267.83004783374065"/>
                    <End x="287.03470100926461" y="244.74401504960986"/>
                    <BasePoint1 x="225.97524911444461" y="272.0069063951035"/>
                    <BasePoint2 x="254.85535464501424" y="259.41967536269738"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_151" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="232.57373078180598" y="267.83004783374065"/>
                    <End x="197.85197464585073" y="299.01174425785757"/>
                    <BasePoint1 x="225.97524911444461" y="272.0069063951035"/>
                    <BasePoint2 x="210.26399146330732" y="286.55353996682129"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_152" name="ReactionGlyph" reaction="Reaction_11">
          <BoundingBox>
            <Position x="567.44771115255389" y="529.35353514504641"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="567.64424778311331" y="526.5403432891319"/>
                <End x="567.25117452199447" y="532.16672700096092"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_153" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="567.64424778311331" y="526.5403432891319"/>
                    <End x="537.13241962363725" y="483.02336008179918"/>
                    <BasePoint1 x="568.03732104423216" y="520.91395957730288"/>
                    <BasePoint2 x="552.68313864921447" y="500.56206390159377"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_154" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="567.25117452199447" y="532.16672700096092"/>
                    <End x="533.28284042318728" y="483.02336008179918"/>
                    <BasePoint1 x="566.85810126087563" y="537.79311071278994"/>
                    <BasePoint2 x="549.97220252675174" y="511.81483132525182"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_155" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="567.25117452199447" y="532.16672700096092"/>
                    <End x="539.79695536316649" y="557.55103431837961"/>
                    <BasePoint1 x="566.85810126087563" y="537.79311071278994"/>
                    <BasePoint2 x="553.22925999674135" y="549.07866844354203"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_156" name="ReactionGlyph" reaction="Reaction_14">
          <BoundingBox>
            <Position x="81.04073319719646" y="311.55638814062331"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="89.82437564483125" y="309.44362654237"/>
                <End x="72.257090749561669" y="313.66914973887663"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_157" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="89.82437564483125" y="309.44362654237"/>
                    <End x="155.06506766203711" y="313.84817336239792"/>
                    <BasePoint1 x="107.39166054010084" y="305.21810334586343"/>
                    <BasePoint2 x="135.62018532488636" y="308.47675755500404"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_158" name="MetabReferenceGlyph" metaboliteGlyph="Layout_29" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="72.257090749561669" y="313.66914973887663"/>
                    <End x="7.8922187093412504" y="355.81079228014335"/>
                    <BasePoint1 x="54.689805854292082" y="317.8946729353832"/>
                    <BasePoint2 x="26.899191057999268" y="337.9091134068899"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_159" name="ReactionGlyph" reaction="Reaction_15">
          <BoundingBox>
            <Position x="387.89583839449551" y="189.11238216348283"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="384.37246568399195" y="189.11979083313844"/>
                <End x="391.41921110499908" y="189.10497349382723"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_160" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="384.37246568399195" y="189.11979083313844"/>
                    <End x="333.03470100926461" y="218.97742046399225"/>
                    <BasePoint1 x="377.32572026298482" y="189.13460817244967"/>
                    <BasePoint2 x="353.41852428087293" y="204.05971865304878"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_161" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="391.41921110499908" y="189.10497349382723"/>
                    <End x="333.03470100926461" y="222.67058379568192"/>
                    <BasePoint1 x="398.46595652600621" y="189.090156154516"/>
                    <BasePoint2 x="367.51201512288719" y="205.87666564027114"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_162" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="391.41921110499908" y="189.10497349382723"/>
                    <End x="428.84470137331851" y="215.17822624437576"/>
                    <BasePoint1 x="398.46595652600621" y="189.090156154516"/>
                    <BasePoint2 x="415.41701530491412" y="202.13048686461809"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_163" name="ReactionGlyph" reaction="Reaction_17">
          <BoundingBox>
            <Position x="535.84166607292536" y="182.15496624097796"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="528.31974831066441" y="187.29010682021371"/>
                <End x="543.36358383518632" y="177.0198256617422"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_164" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="528.31974831066441" y="187.29010682021371"/>
                    <End x="473.96960942940677" y="220.66096980743396"/>
                    <BasePoint1 x="513.27591278614238" y="197.56038797868521"/>
                    <BasePoint2 x="489.8618022266441" y="211.67824918267746"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_165" name="MetabReferenceGlyph" metaboliteGlyph="Layout_30" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="543.36358383518632" y="177.0198256617422"/>
                    <End x="595.90796467462678" y="135.98716474838673"/>
                    <BasePoint1 x="558.40741935970834" y="166.7495445032707"/>
                    <BasePoint2 x="580.91865089829798" y="148.80078433621082"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_166" name="ReactionGlyph" reaction="Reaction_20">
          <BoundingBox>
            <Position x="339.86007633188638" y="88.16690525802187"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="340.60519100470384" y="98.576850907786863"/>
                <End x="339.11496165906891" y="77.756959608256878"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_167" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="340.60519100470384" y="98.576850907786863"/>
                    <End x="342.29068379067536" y="192.25161196515728"/>
                    <BasePoint1 x="342.09542035033877" y="119.39674220731686"/>
                    <BasePoint2 x="342.56560940691577" y="161.02914991111956"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_168" name="MetabReferenceGlyph" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="339.11496165906891" y="77.756959608256878"/>
                    <End x="328.47894349520652" y="8.5526989698573743"/>
                    <BasePoint1 x="337.62473231343398" y="56.937068308726886"/>
                    <BasePoint2 x="332.67928056791152" y="27.53991081440963"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_169" name="ReactionGlyph" reaction="Reaction_16">
          <BoundingBox>
            <Position x="455.12253010513268" y="336.31686773439287"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="454.33296957852724" y="341.25021287987289"/>
                <End x="455.91209063173812" y="331.38352258891285"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_170" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="454.33296957852724" y="341.25021287987289"/>
                    <End x="427.27282213148544" y="412.51203206357604"/>
                    <BasePoint1 x="452.7538485253163" y="351.11690317083293"/>
                    <BasePoint2 x="439.61855506509812" y="384.28114018994449"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_171" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="455.91209063173812" y="331.38352258891285"/>
                    <End x="425.96907961697099" y="412.51203206357604"/>
                    <BasePoint1 x="457.49121168494906" y="321.51683229795282"/>
                    <BasePoint2 x="442.12492591426275" y="364.54775960802442"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_172" name="MetabReferenceGlyph" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="455.91209063173812" y="331.38352258891285"/>
                    <End x="452.38834563844694" y="253.17822624437576"/>
                    <BasePoint1 x="457.49121168494906" y="321.51683229795282"/>
                    <BasePoint2 x="455.33455892500069" y="284.88085669842428"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_173" name="ReactionGlyph" reaction="Reaction_12">
          <BoundingBox>
            <Position x="552.35412480833475" y="653.87359620491225"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="549.21811166085979" y="646.25532689618319"/>
                <End x="555.4901379558097" y="661.4918655136413"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_174" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="549.21811166085979" y="646.25532689618319"/>
                    <End x="523.95003293761749" y="595.55103431837961"/>
                    <BasePoint1 x="542.94608536590988" y="631.01878827872508"/>
                    <BasePoint2 x="531.88005257802627" y="609.47577664418782"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_175" name="MetabReferenceGlyph" metaboliteGlyph="Layout_32" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="555.4901379558097" y="661.4918655136413"/>
                    <End x="574.94157392241459" y="723.41642049296024"/>
                    <BasePoint1 x="561.76216425075961" y="676.72840413109941"/>
                    <BasePoint2 x="569.91987566032458" y="703.88154696639435"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_176" name="ReactionGlyph" reaction="Reaction_29">
          <BoundingBox>
            <Position x="380.44203889624077" y="131.87430684338869"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="375.07190227235503" y="141.07441296172738"/>
                <End x="385.81217552012652" y="122.67420072505001"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_177" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="375.07190227235503" y="141.07441296172738"/>
                    <End x="323.78993234088165" y="215.47457303060037"/>
                    <BasePoint1 x="364.33162902458361" y="159.47462519840474"/>
                    <BasePoint2 x="341.37571237078976" y="192.07465217367189"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_178" name="MetabReferenceGlyph" metaboliteGlyph="Layout_33" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="385.81217552012652" y="122.67420072505001"/>
                    <End x="415.30241243368596" y="55.972450663826748"/>
                    <BasePoint1 x="396.55244876789794" y="104.27398848837265"/>
                    <BasePoint2 x="408.61249891273485" y="75.52316651693036"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_179" name="ReactionGlyph" reaction="Reaction_19">
          <BoundingBox>
            <Position x="317.51550847141334" y="318.39403064184808"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="317.16776606275442" y="323.4674220060968"/>
                <End x="317.86325088007226" y="313.32063927759935"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_180" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="317.16776606275442" y="323.4674220060968"/>
                    <End x="325.61170061892608" y="395.18726653510566"/>
                    <BasePoint1 x="316.47228124543659" y="333.61420473459424"/>
                    <BasePoint2 x="320.86811972785188" y="366.93743131697431"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_181" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="317.86325088007226" y="313.32063927759935"/>
                    <End x="326.74211189696484" y="395.18726653510566"/>
                    <BasePoint1 x="318.55873569739009" y="303.17385654910191"/>
                    <BasePoint2 x="322.82429500150693" y="346.64386585997943"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_182" name="MetabReferenceGlyph" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="317.86325088007226" y="313.32063927759935"/>
                    <End x="337.42577237030849" y="230.25161196515728"/>
                    <BasePoint1 x="318.55873569739009" y="303.17385654910191"/>
                    <BasePoint2 x="328.16612523817872" y="264.17603857500524"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_183" name="ReactionGlyph" reaction="Reaction_33">
          <BoundingBox>
            <Position x="337.9516839341486" y="520.06407594945449"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="331.95052568517019" y="528.47205526041193"/>
                <End x="343.95284218312702" y="511.65609663849699"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_184" name="MetabReferenceGlyph" metaboliteGlyph="Layout_34" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="331.95052568517019" y="528.47205526041193"/>
                    <End x="301.44577252963137" y="594.17161828272583"/>
                    <BasePoint1 x="319.94820918721342" y="545.28801388232694"/>
                    <BasePoint2 x="307.69641173393319" y="573.93380573800505"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_185" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="343.95284218312702" y="511.65609663849699"/>
                    <End x="400.35600867236212" y="450.51203206357604"/>
                    <BasePoint1 x="355.95515868108379" y="494.84013801658199"/>
                    <BasePoint2 x="381.15616280121219" y="468.47209538460027"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_186" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="281.53938061916961" y="512.31701258471855"/>
                    <End x="329.81227045758237" y="514.25460538343111"/>
                    <BasePoint1 x="305.67582553837599" y="513.28580898407483"/>
                    <BasePoint2 x="321.67285698101614" y="508.44513481740773"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_187" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="362.81133132338897" y="458.46661609368857"/>
                    <End x="329.81227045758237" y="514.25460538343111"/>
                    <BasePoint1 x="346.31180089048564" y="486.36061073855984"/>
                    <BasePoint2 x="321.67285698101614" y="508.44513481740773"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_188" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="328.69400254435021" y="433.18726653510566"/>
                    <End x="329.81227045758237" y="514.25460538343111"/>
                    <BasePoint1 x="329.25313650096632" y="473.72093595926839"/>
                    <BasePoint2 x="321.67285698101614" y="508.44513481740773"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_189" name="ReactionGlyph" reaction="Reaction_35">
          <BoundingBox>
            <Position x="374.87638852255805" y="562.18824549475903"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="374.88485578424604" y="551.66995424189963"/>
                <End x="374.86792126087005" y="572.70653674761843"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_190" name="MetabReferenceGlyph" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="374.88485578424604" y="551.66995424189963"/>
                    <End x="374.22751291782117" y="458.46661609368857"/>
                    <BasePoint1 x="374.90179030762209" y="530.63337173618083"/>
                    <BasePoint2 x="374.56888524356566" y="489.290848288505"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_191" name="MetabReferenceGlyph" metaboliteGlyph="Layout_35" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="374.86792126087005" y="572.70653674761843"/>
                    <End x="373.97579422573489" y="644.33244115087655"/>
                    <BasePoint1 x="374.850986737494" y="593.74311925333723"/>
                    <BasePoint2 x="374.40915685077044" y="624.29692582853659"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_192" name="ReactionGlyph" reaction="Reaction_34">
          <BoundingBox>
            <Position x="534.55736381660063" y="419.99999442902117"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="524.44293767373642" y="421.45836508206185"/>
                <End x="544.67178995946483" y="418.5416237759805"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_193" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="524.44293767373642" y="421.45836508206185"/>
                    <End x="442.38718836518819" y="429.57692307932547"/>
                    <BasePoint1 x="504.2140853880079" y="424.37510638814319"/>
                    <BasePoint2 x="468.24342380516595" y="427.7052000602547"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_194" name="MetabReferenceGlyph" metaboliteGlyph="Layout_36" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="544.67178995946483" y="418.5416237759805"/>
                    <End x="616.17571122247318" y="403.63112468888477"/>
                    <BasePoint1 x="564.90064224519335" y="415.62488246989915"/>
                    <BasePoint2 x="595.59538980526531" y="408.89881825287159"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_195" name="ReactionGlyph" reaction="Reaction_36">
          <BoundingBox>
            <Position x="618.05345280963957" y="484.18888605617758"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="609.32481789635256" y="481.89011180713868"/>
                <End x="626.78208772292658" y="486.48766030521648"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_196" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="609.32481789635256" y="481.89011180713868"/>
                    <End x="552.63535346977551" y="469.88029367739404"/>
                    <BasePoint1 x="591.86754806977854" y="477.29256330906088"/>
                    <BasePoint2 x="567.88713331313352" y="472.43704136870804"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_197" name="MetabReferenceGlyph" metaboliteGlyph="Layout_37" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="626.78208772292658" y="486.48766030521648"/>
                    <End x="690.70805173551526" y="507.99715921967868"/>
                    <BasePoint1 x="644.2393575495006" y="491.08520880329428"/>
                    <BasePoint2 x="671.83802209915143" y="500.69057113600593"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_198" name="ReactionGlyph" reaction="Reaction_37">
          <BoundingBox>
            <Position x="397.57387947613279" y="507.96618439953454"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="392.10842311054938" y="499.43330582430298"/>
                <End x="403.03933584171619" y="516.49906297476605"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_199" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="392.10842311054938" y="499.43330582430298"/>
                    <End x="343.13068226944142" y="433.18726653510566"/>
                    <BasePoint1 x="381.17751037938257" y="482.36754867383985"/>
                    <BasePoint2 x="359.42136814162029" y="453.51096831685697"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_200" name="MetabReferenceGlyph" metaboliteGlyph="Layout_38" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="403.03933584171619" y="516.49906297476605"/>
                    <End x="435.19151973227679" y="579.34483803973671"/>
                    <BasePoint1 x="413.97024857288301" y="533.56482012522918"/>
                    <BasePoint2 x="427.31361233537154" y="560.72126837009876"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_201" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_11">
          <BoundingBox>
            <Position x="495.63535346977551" y="450.02336008179918"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_202" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_2">
          <BoundingBox>
            <Position x="240.53938061916961" y="497.39383117752368"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_203" name="TextGlyph" graphicalObject="Layout_5" originOfText="Metabolite_8">
          <BoundingBox>
            <Position x="287.73652035655505" y="354.36872517801385"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_204" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_12">
          <BoundingBox>
            <Position x="310.43191067537737" y="400.18726653510566"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_205" name="TextGlyph" graphicalObject="Layout_7" originOfText="Metabolite_6">
          <BoundingBox>
            <Position x="191.87488223751461" y="144.98138828932861"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_206" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="462.45966986453277" y="259.264210806954"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_207" name="TextGlyph" graphicalObject="Layout_9" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="377.40808019866017" y="226.58941173875064"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_208" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="292.03470100926461" y="220.47457303060037"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_209" name="TextGlyph" graphicalObject="Layout_11" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="401.38718836518819" y="417.51203206357604"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_210" name="TextGlyph" graphicalObject="Layout_12" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="487.77388824739865" y="562.55103431837961"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_211" name="TextGlyph" graphicalObject="Layout_13" originOfText="Metabolite_9">
          <BoundingBox>
            <Position x="160.06506766203711" y="304.01174425785757"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_212" name="TextGlyph" graphicalObject="Layout_14" originOfText="Metabolite_15">
          <BoundingBox>
            <Position x="135.59483923262997" y="363.49889866491321"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_213" name="TextGlyph" graphicalObject="Layout_15" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="356.04998975923991" y="425.46661609368857"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_214" name="TextGlyph" graphicalObject="Layout_16" originOfText="Metabolite_13">
          <BoundingBox>
            <Position x="324.34160702173358" y="197.25161196515728"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_215" name="TextGlyph" graphicalObject="Layout_17" originOfText="Metabolite_10">
          <BoundingBox>
            <Position x="432.96960942940677" y="220.17822624437576"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_216" name="TextGlyph" graphicalObject="Layout_18" originOfText="Metabolite_14">
          <BoundingBox>
            <Position x="178.02583152860097" y="343.51600532415068"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_217" name="TextGlyph" graphicalObject="Layout_19" originOfText="Metabolite_16">
          <BoundingBox>
            <Position x="136.39211966787479" y="119.40893882281671"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfAdditionalGraphicalObjects>
        <AdditionalGraphicalObject key="Layout_218" name="GeneralGlyph" objectRole="rule">
          <BoundingBox>
            <Position x="307.64751867044731" y="335.42297795938089"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
      </ListOfAdditionalGraphicalObjects>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="team_2016_final_model_lo2016.xml">
    <SBMLMap SBMLid="Death_of_M1" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Death_of_M2" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Death_of_T1" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Death_of_T17" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Death_of_T2" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Death_of_Tr" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Decay_of_I10" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Decay_of_I12" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Decay_of_I2" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Decay_of_I21" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Decay_of_I4" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Decay_of_I6" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Decay_of_Ia" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Decay_of_Ib" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Decay_of_Ig" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Diff_of_M0_to_M1" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Diff_of_M0_to_M2" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Diff_of_M1_to_M2" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Diff_of_M2_to_M1" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="I10_0" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="I12_0" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="I21_0" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="I2_0" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="I4_0" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="I6_0" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Ia_0" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Ib_0" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Ig_0" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Induction_of_T17" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Induction_of_T1_from_M" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Induction_of_T2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Induction_of_Tr" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="M0" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="M1_0" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="M2_0" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="M_0" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Prod_of_I10_from_M2" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Prod_of_I10_from_Tr" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Prod_of_I12_from_M1" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Prod_of_I21_from_T17" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Prod_of_I2_from_T1" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Prod_of_I4_from_T2" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Prod_of_I6_from_M1" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Prod_of_Ia_from_M1" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Prod_of_Ia_from_T1" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Prod_of_Ib_from_M2" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Prod_of_Ib_from_Tr" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Prod_of_Ig_from_M1" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Prod_of_Ig_from_T1" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Prof_of_I4_from_M2" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Proliferation_of_T1" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Rate_Law_for_Differentiation" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="Rate_Law_for_Induction_of_T1_from_M" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="Rate_Law_for_Prod_of_I10_from_Tr" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="Rate_Law_for_Prod_of_I12_from_M1" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Rate_Law_for_Proliferation_of_T1" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Rate_Law_for_Th17_cells" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Rate_Law_for_Th2_cells" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Rate_Law_for_Thr_cells" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="T17_0" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="T1_0" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="T2_0" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Tr_0" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="activated_first_order_reaction" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="compartment_0" COPASIkey="Compartment_0"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_85" name="unit" symbol="symbol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_84">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
