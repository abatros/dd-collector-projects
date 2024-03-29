<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<NamedLayer>
    <Name>V_PARCEL47</Name>
    <UserStyle>
      <Name>vpar</Name>
      <Title>geoserver style</Title>
      <Abstract>Generated by GeoServer</Abstract>
      <FeatureTypeStyle>
      <Rule>
        <Title>Land Parcels (Province)</Title>
	<MaxScaleDenominator>20000</MaxScaleDenominator>
        <PolygonSymbolizer>
          <Fill>
            <CssParameter name="fill">#ffffff</CssParameter>
            <CssParameter name="fill-opacity">.2</CssParameter>
          </Fill>
          <Stroke>
            <CssParameter name="stroke">#88FF00</CssParameter>
            <CssParameter name="stroke-opacity">1</CssParameter>
            <CssParameter name="stroke-width">1</CssParameter>
          </Stroke>
        </PolygonSymbolizer>
       </Rule>
      </FeatureTypeStyle>
       <!-- label -->
      <FeatureTypeStyle>
        <Rule>
          <MinScaleDenominator>20</MinScaleDenominator>
          <!--
    	  <VendorOption name="spaceAround">50</VendorOption>
          <VendorOption name="partials">true</VendorOption>
          -->
          <TextSymbolizer>
            
            <Geometry>
                <!-- <ogc:Function name="centroid"> -->
                <ogc:Function name="centroid">
                  <ogc:PropertyName>geom</ogc:PropertyName>
                  <!-- <ogc:Literal>1.0</ogc:Literal> -->
                </ogc:Function>
            </Geometry>
            
            <Label>
              <ogc:PropertyName>utmmap</ogc:PropertyName>
            </Label>

            <Font>
              <CssParameter name="font-family">Purisa</CssParameter>
              <CssParameter name="font-style">Normal</CssParameter>
              <CssParameter name="font-size">8</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement>
              <PointPlacement>
                <AnchorPoint>
                  <AnchorPointX>0.5</AnchorPointX>
                  <AnchorPointY>0.5</AnchorPointY>
                </AnchorPoint>
              </PointPlacement>
            </LabelPlacement>
            <Halo>
              <Radius>
                <ogc:Literal>1</ogc:Literal>
              </Radius>
              <Fill>
                <CssParameter name="fill">#BB8866</CssParameter>
                <CssParameter name="fill-opacity">0.55</CssParameter>
              </Fill>
            </Halo>
            <Fill>
              <CssParameter name="fill">#000000</CssParameter>
            </Fill>
            <VendorOption name="group">true</VendorOption>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="labelObstacle">true</VendorOption>
            <VendorOption name="goodnessOfFit">0.9</VendorOption>
            <VendorOption name="autoWrap">200</VendorOption>
          </TextSymbolizer>
        </Rule>

      </FeatureTypeStyle>      
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
