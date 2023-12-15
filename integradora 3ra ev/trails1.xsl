<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:variable name="color-arco1" select="'blue'" />
  <xsl:variable name="color-arco2" select="'red'" />
  <xsl:variable name="color-arco3" select="'yellow'" />

  <xsl:template match="/">
    <html>
      <head>
      
        <style type="text/css">
          .tabla {
            border-collapse: collapse;
            width: 100%;
            table-layout: fixed;
          }
          .filaEncabezado {
            display: table-row;
            font-weight: bold;
            background-color: #D2B48C;
            border: 1px solid black;
          }
          .fila {
            display: table-row;
            border: 1px solid black;
          }
          .celda {
            display: table-cell;
            padding: 8px;
            border: 1px solid black;
            word-wrap: break-word;
          }
          .arc-TrailsintheSky {
            background-color: #87CEEB;
          }
          .arc-TrailsofColdSteel {
            background-color: #F08080;
          }
          .arc-TrailsfromZero {
            background-color: #F5F5DC;
          }
          .name-Erebonia {
            background-color: #FF6347;
          }
          .name-Calvard {
            background-color: #CD853F;
          }
          .name-Liberl {
            background-color: #AFEEEE;
          }
          .name-Crossbell {
            background-color: #FFDEAD;
          }
          .name-Ouroboros{
            background-color: #9370D8;
            }
          .name-NobleAlliance{
            background-color: #FFDAB9;
          }
          .name-Jaegers{
            background-color: #9ACD32;
          }
        </style>
      </head>
      <body>

      <h1><span style="color:#ADD8E6;">EL MUNDO DE TRAILS: PERSONAJES, PAISES Y VILLANOS</span></h1>
      
        <h1><span style="color:#5F9EA0;">Personajes</span></h1>
        <table class="tabla">
          <tr class="filaEncabezado">
            <td class="celda">Arco</td>
            <td class="celda">Nombre
            <img src="{/Rean/@img}" alt="{Nombre/Rean}"/></td>
            <td class="celda">Género</td>
            <td class="celda">Arma</td>
            <td class="celda">Clase</td>
            <td class="celda">Ocupación</td>
            <td class="celda">Afiliación</td>
          </tr>
          <xsl:for-each select="//character">
            <tr>
              <xsl:variable name="arcClass" select="normalize-space(arc)" />
              <xsl:attribute name="class">
                <xsl:value-of select="concat('arc-', translate($arcClass, ' ', ''))"/>
              </xsl:attribute>
              <td class="celda"><xsl:value-of select="arc" /></td>
              <td class="celda"><xsl:value-of select="name" /></td>
              <td class="celda"><xsl:value-of select="gender" /></td>
              <td class="celda"><xsl:value-of select="weapon" /></td>
              <td class="celda"><xsl:value-of select="class" /></td>
              <td class="celda"><xsl:value-of select="occupation" /></td>
              <td class="celda"><xsl:value-of select="affiliation" /></td>
            </tr>
          </xsl:for-each>
        </table>


         <h1><span style="color:#B8860B;">Paises</span></h1>
        <table class="tabla">
          <tr class="filaEncabezado">
            <td class="celda">Nombre</td>
            <td class="celda">Capital</td>
            <td class="celda">Líder(es)</td>
            <td class="celda">Régimen</td>
            <td class="celda">Ciudades</td>
          </tr>
          <xsl:for-each select="//country">
            <tr>
              <xsl:variable name="nameClass" select="normalize-space(name)" />
              <xsl:attribute name="class">
                <xsl:value-of select="concat('name-', translate($nameClass, ' ', ''))"/>
              </xsl:attribute>
              <td class="celda"><xsl:value-of select="name" /></td>
              <td class="celda"><xsl:value-of select="capital" /></td>
              <td class="celda">
                <xsl:for-each select="leader">
                  <xsl:value-of select="." />
                  <xsl:if test="position() != last()">
                    <br />
                  </xsl:if>
                </xsl:for-each>
              </td>
              <td class="celda"><xsl:value-of select="regimen" /></td>
              <td class="celda">
                <xsl:for-each select="cities/city">
                  <xsl:value-of select="." />
                  <xsl:if test="position() != last()">
                    <br />
                  </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <h1><span style="color:#8B008B;">Villanos</span></h1>
          <table class="tabla">
            <tr class="filaEncabezado">
            <th class="celda">Nombre</th>
            <th class="celda">Líder</th>
            <th class="celda">Propósito</th>
            <th class="celda">Miembros</th>
            </tr>
          <xsl:for-each select="//villain">
            <tr class="fila">
              <xsl:variable name="nameClass" select="normalize-space(name)" />
                <xsl:attribute name="class">
                  <xsl:value-of select="concat('name-', translate($nameClass, ' ', ''))"/>
                </xsl:attribute>
            <td class="celda"><xsl:value-of select="name" /></td>
            <td class="celda"><xsl:value-of select="leader" /></td>
            <td class="celda"><xsl:value-of select="purpose" /></td>
            <td class="celda">
            <xsl:for-each select="members/member">
              <xsl:value-of select="." />
                <xsl:if test="position() != last()">
                  <br />
                  </xsl:if>
                </xsl:for-each>
              </td>
              </tr>
            </xsl:for-each>
          </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
