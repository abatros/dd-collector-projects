<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0" 
                       xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
                       xmlns="http://www.opengis.net/sld" 
                       xmlns:ogc="http://www.opengis.net/ogc" 
                       xmlns:xlink="http://www.w3.org/1999/xlink" 
                       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>thgeom:oacs-geo-view-teak-research</Name>
    <UserStyle>
      <Name>generic</Name>
      <Title>Generic</Title>
      <Abstract>Generic style</Abstract>
      <FeatureTypeStyle>
        <Rule>
          <Name>raster</Name>
          <Title>Opaque Raster</Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:Function name="isCoverage"/>
              <ogc:Literal>true</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <RasterSymbolizer>
            <Opacity>1.0</Opacity>
          </RasterSymbolizer>
        </Rule>
        <Rule>
          <Name>Polygon</Name>
          <Title>Grey Polygon</Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:Function name="dimension">
                <ogc:Function name="geometry"/>
              </ogc:Function>
              <ogc:Literal>2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#AAAAAA</CssParameter>
              <CssParameter name="fill-opacity">0.25</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#11FF22</CssParameter>
              <CssParameter name="stroke-width">2</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
          
          
          
          <TextSymbolizer>
            
            <Geometry>
                <!-- <ogc:Function name="centroid"> -->
                <ogc:Function name="centroid">
                  <ogc:PropertyName>geom</ogc:PropertyName>
                  <!-- <ogc:Literal>1.0</ogc:Literal> -->
                </ogc:Function>
            </Geometry>          
            <Label>
              <ogc:PropertyName>label</ogc:PropertyName>
            </Label>
              <Font>
                <CssParameter name="font-family">Laksaman</CssParameter>
                <CssParameter name="font-style">Italic</CssParameter>
                <CssParameter name="font-size">12</CssParameter>
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
                  <ogc:Literal>0.25</ogc:Literal>
                </Radius>
                <Fill>
                  <CssParameter name="fill">#556622</CssParameter>
                  <CssParameter name="fill-opacity">0.25</CssParameter>
                </Fill>
              </Halo>          
            <Fill>
              <CssParameter name="fill">#22BB11</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>
            <VendorOption name="group">true</VendorOption>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="labelObstacle">true</VendorOption>
            <VendorOption name="polygonAlign">mbr</VendorOption>
            <VendorOption name="goodnessOfFit">1</VendorOption>
            <VendorOption name="autoWrap">50</VendorOption>          
          </TextSymbolizer>
          
        </Rule>
        <Rule>
          <Name>Line</Name>
          <Title>Blue Line</Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:Function name="dimension">
                <ogc:Function name="geometry"/>
              </ogc:Function>
              <ogc:Literal>1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#0000FF</CssParameter>
              <CssParameter name="stroke-opacity">1</CssParameter>
            </Stroke>
          </LineSymbolizer>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>label</ogc:PropertyName>
            </Label>
              <Font>
                <CssParameter name="font-family">Laksaman</CssParameter>
                <CssParameter name="font-style">Italic</CssParameter>
                <CssParameter name="font-size">12</CssParameter>
              </Font>
              <LabelPlacement>
                <!-- <LinePlacement/> -->
                
                <LinePlacement>
                  <PerpendicularOffset>
                    -10
                  </PerpendicularOffset>
                </LinePlacement>
                
              </LabelPlacement>
              <Halo>
                <Radius>
                  <ogc:Literal>0.25</ogc:Literal>
                </Radius>
                <Fill>
                  <CssParameter name="fill">#556622</CssParameter>
                  <CssParameter name="fill-opacity">0.25</CssParameter>
                </Fill>
              </Halo>          
            <Fill>
              <CssParameter name="fill">#552299</CssParameter>
              <CssParameter name="fill-opacity">1</CssParameter>
            </Fill>
            <VendorOption name="followLine">true</VendorOption>
            <VendorOption name="maxAngleDelta">15</VendorOption>
            <VendorOption name="partials">true</VendorOption>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="labelAllGroup">true</VendorOption>
            <VendorOption name="labelObstacle">true</VendorOption>
            <VendorOption name="forceLeftToRight">true</VendorOption>
            <VendorOption name="goodnessOfFit">0.4</VendorOption>
          </TextSymbolizer>

        </Rule>
        <Rule>
          <Name>point</Name>
          <Title>Red Square Point</Title>
          <ElseFilter/>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>square</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#FF0000</CssParameter>
                </Fill>
              </Mark>
              <Size>6</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
                
        <VendorOption name="ruleEvaluation">first</VendorOption>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
