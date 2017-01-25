using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Web;
using System.IO;

namespace Ahorro
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DDLUnidad_SelectedIndexChanged(null, null);
                txtNE.Text = "0";
                txtE.Text = "0";
                txtSE.Text = "0";
                txtS.Text = "0";
                txtSO.Text = "0";
                txtO.Text = "0";
                txtNO.Text = "0";
                txtN.Text = "0";
                txtCrSe.Text = "0";
                txtCrDb.Text = "0";
                txtPEENG.Text = "0";
                txtPEEND.Text = "0";
                txtPENENG.Text = "0";
                txtPENEND.Text = "0";
                txtPID.Text = "0";
                txtTecho.Text = "0";
                txtPiso.Text = "0";
                txtNH.Text = "0";
                txtLuces.Text = "0";
            }
        }

        protected void DDLUnidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblNE.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblE.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblSE.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblS.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblSO.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblO.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblNO.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblN.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblCS.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblCD.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblGN.Text = DDLUnidad.SelectedItem.ToString();
            lblGNN.Text = DDLUnidad.SelectedItem.ToString();
            lblDN.Text = DDLUnidad.SelectedItem.ToString();
            lblDNN.Text = DDLUnidad.SelectedItem.ToString();
            lblPI.Text = DDLUnidad.SelectedItem.ToString();
            lblTecho.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblPiso.Text = DDLUnidad.SelectedItem.ToString() + "²";
            lblPuertas.Text = DDLUnidad.SelectedItem.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CRV1.Enabled = true;
            CRV1.Visible = true;
            Button1.Visible = false;
            Button2.Visible = true;
            
            
            Double[] Ventanas;
            double  VentanasMax, CristalS, CristalD, grosor, PEEN, PENEN, PI, Techo, Piso, NH,Luces,Puertas, Total, Total10, Ton;
            Ventanas = new Double[8];
            Ventanas[0] = double.Parse(txtNE.Text)  *    double.Parse(DDLNE.SelectedValue.ToString())   *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[1] = double.Parse(txtE.Text)   *    double.Parse(DDLE.SelectedValue.ToString())    *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[2] = double.Parse(txtSE.Text)  *    double.Parse(DDLSE.SelectedValue.ToString())   *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[3] = double.Parse(txtS.Text)   *    double.Parse(DDLS.SelectedValue.ToString())    *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[4] = double.Parse(txtSO.Text)  *    double.Parse(DDLSO.SelectedValue.ToString())   *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[5] = double.Parse(txtO.Text)   *    double.Parse(DDLO.SelectedValue.ToString())    *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[6] = double.Parse(txtNO.Text)  *    double.Parse(DDLNO.SelectedValue.ToString())   *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Ventanas[7] = double.Parse(txtN.Text)   *    0                                              *     1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            VentanasMax=Ventanas.Max();
            CristalS = double.Parse(txtCrSe.Text) * 14  * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            CristalD = double.Parse(txtCrDb.Text) * 7   * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            grosor = double.Parse(txtPEENG.Text);
            
            if (grosor <= 8)
                {
                    PEEN = double.Parse(txtPEEND.Text) * 30 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()));
                } 
                else 
                {
                    PEEN = double.Parse(txtPEEND.Text) * 20 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()));
                }
            grosor = double.Parse(txtPENENG.Text);
            
            if (grosor <= 8)
                {
                    PENEN = double.Parse(txtPENEND.Text) * 60 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()));
                } 
                else 
                {
                    PENEN = double.Parse(txtPENEND.Text) * 30 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()));
                }
            PI = double.Parse(txtPID.Text) * 30 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()));
            Techo = double.Parse(txtTecho.Text) * double.Parse(DDLTecho.SelectedValue.ToString()) * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            Piso =  double.Parse(txtPiso.Text)  * 3 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()) * double.Parse(DDLUnidad.SelectedValue.ToString()));
            NH = double.Parse(txtNH.Text) * 600;
            Luces = double.Parse(txtLuces.Text) * 3;
            Puertas = double.Parse(txtPuertas.Text) * 300 * 1/(double.Parse(DDLUnidad.SelectedValue.ToString()));
            Total =   VentanasMax+ CristalS+ CristalD+ grosor+PEEN+ PENEN+ PI+Techo+ Piso+ NH+Luces+Puertas;
            Total10 = Total * 1.1;
            Ton = Total10 / 12000;
            string cuerpo;
            cuerpo = "Noroeste " + DDLNE.SelectedItem.ToString() + " " + txtNE.Text + " " + DDLNE.SelectedValue.ToString() + " " + Ventanas[0].ToString() + "<br>";
            cuerpo = cuerpo + "Este " + DDLE.SelectedItem.ToString() + " " + txtE.Text + " " + DDLE.SelectedValue.ToString() + " " + Ventanas[1].ToString() + "<br>";
            cuerpo = cuerpo + "Sureste " + DDLSE.SelectedItem.ToString() + " " + txtSE.Text + " " + DDLSE.SelectedValue.ToString() + " " + Ventanas[2].ToString() + "<br>";
            cuerpo = cuerpo + "Sur " + DDLS.SelectedItem.ToString() + " " + txtS.Text + " " + DDLS.SelectedValue.ToString() + " " + Ventanas[3].ToString() + "<br>";
            cuerpo = cuerpo + "Suroeste " + DDLSO.SelectedItem.ToString() + " " + txtSO.Text + " " + DDLSO.SelectedValue.ToString() + " " + Ventanas[4].ToString() + "<br>";
            cuerpo = cuerpo + "Oeste " + DDLO.SelectedItem.ToString() + " " + txtO.Text + " " + DDLO.SelectedValue.ToString() + " " + Ventanas[5].ToString() + "<br>";
            cuerpo = cuerpo + "Noroeste " + DDLNO.SelectedItem.ToString() + " " + txtNO.Text + " " + DDLNO.SelectedValue.ToString() + " " + Ventanas[6].ToString() + "<br>";
            cuerpo = cuerpo + "Norte " + DDLN.SelectedItem.ToString() + " " + txtN.Text + " " + DDLN.SelectedValue.ToString() + " " + Ventanas[7].ToString() + "<br>";
            cuerpo = cuerpo + "Cristal Sencillo " + txtCrSe.Text + " 14 " +CristalS.ToString() + "<br>";
            cuerpo = cuerpo + "Cristal Doble " + txtCrDb.Text + " 7 " + CristalD.ToString() + "<br>";
            cuerpo = cuerpo + "Cristal Doble " + txtCrDb.Text + " 7 " + CristalD.ToString() + "<br>";
            cuerpo = cuerpo + "Pared Exterior Norte grosor "+ txtPEENG.Text + " largo de la pared "+txtPEEND.Text +" 30" +PEEN.ToString() +"<br>";
            cuerpo = cuerpo + "Pared Exterior No Norte grosor " + txtPENENG.Text + " largo de la pared " + txtPENEND.Text + " 60" +PENEN.ToString()+ "<br>";
            cuerpo = cuerpo + "Pared Interior " + txtPID.Text + " largo de la pared 60 " + PI.ToString()+ "<br>";
            cuerpo = cuerpo + "Techo " + txtTecho.Text + " " + DDLTecho.SelectedItem.ToString() + " " + DDLTecho.SelectedValue.ToString() +" " +Techo.ToString() + "<br>";
            cuerpo = cuerpo + "Piso "  + txtPiso.Text + " 3 " + Piso.ToString() + "<br>";
            cuerpo = cuerpo + "Número de personas " + txtNH.Text + " 600 " + NH.ToString() + "<br>";
            cuerpo = cuerpo + "Luces " + txtLuces.Text + " 3 " + Luces.ToString() + "<br>";
            cuerpo = cuerpo + "Puertas " + txtPuertas.Text + " 300 " + Puertas.ToString() + "<br>";
            cuerpo = cuerpo + "Carga Total " + Total.ToString() + "<br>";
            cuerpo = cuerpo + "Carga Total +10% " + Total10.ToString() + "<br>";
            cuerpo = cuerpo + "Ton " + Ton.ToString() + "<br>";
            cuerpo = cuerpo + "Unidad " + DDLUnidad.SelectedItem.ToString();

            DataSet dsUnidad1 = new DataSet("dsUnidad");
            ReportDocument CRCalculo1 = new ReportDocument();
            CRCalculo1.Load(Server.MapPath("CRCalculo.rpt"));
            //CRCalculo1.SetDataSource(dsUnidad1);

            CRCalculo1.SetParameterValue("Cliente", txtNombre.Text);
            CRCalculo1.SetParameterValue("Correo", txtCorreo.Text);
            CRCalculo1.SetParameterValue("Unidad", DDLUnidad.SelectedItem.ToString().Trim());
            CRCalculo1.SetParameterValue("Unidad2", DDLUnidad.SelectedItem.ToString().Trim() + "²");
            CRCalculo1.SetParameterValue("NEC", DDLNE.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("NED", txtNE.Text);
            CRCalculo1.SetParameterValue("NEV", Ventanas[0]);
            CRCalculo1.SetParameterValue("EC", DDLE.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("ED", txtE.Text);
            CRCalculo1.SetParameterValue("EV", Ventanas[1]);
            CRCalculo1.SetParameterValue("SEC", DDLSE.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("SED", txtSE.Text);
            CRCalculo1.SetParameterValue("SEV", Ventanas[2]);
            CRCalculo1.SetParameterValue("SC", DDLS.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("SD", txtS.Text);
            CRCalculo1.SetParameterValue("SV", Ventanas[3]);
            CRCalculo1.SetParameterValue("SOC", DDLSO.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("SOD", txtSO.Text);
            CRCalculo1.SetParameterValue("SOV", Ventanas[4]);
            CRCalculo1.SetParameterValue("OC", DDLO.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("OD", txtO.Text);
            CRCalculo1.SetParameterValue("OV", Ventanas[5]);
            CRCalculo1.SetParameterValue("NOC", DDLNO.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("NOD", txtNO.Text);
            CRCalculo1.SetParameterValue("NOV", Ventanas[6]);
            CRCalculo1.SetParameterValue("NC", DDLN.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("ND", txtN.Text);
            CRCalculo1.SetParameterValue("NV", Ventanas[7]);

            CRCalculo1.SetParameterValue("CS", txtCrSe.Text);
            CRCalculo1.SetParameterValue("CSV", CristalS);
            CRCalculo1.SetParameterValue("CD", txtCrDb.Text);
            CRCalculo1.SetParameterValue("CDV", CristalD);
            CRCalculo1.SetParameterValue("PEG", txtPEENG.Text);
            CRCalculo1.SetParameterValue("PEE", txtPEEND.Text);
            CRCalculo1.SetParameterValue("PEEV", PEEN);
            CRCalculo1.SetParameterValue("PIG", txtPENENG.Text);
            CRCalculo1.SetParameterValue("PEN", txtPENEND.Text);
            CRCalculo1.SetParameterValue("PENV", PENEN);
            CRCalculo1.SetParameterValue("PI", txtPID.Text);
            CRCalculo1.SetParameterValue("PIV", PI);
            CRCalculo1.SetParameterValue("Techo", DDLTecho.SelectedItem.ToString());
            CRCalculo1.SetParameterValue("TE", txtTecho.Text);

            CRCalculo1.SetParameterValue("TEV",Techo);
            CRCalculo1.SetParameterValue("PIS", txtPiso.Text);
            CRCalculo1.SetParameterValue("PISV", Piso);
            CRCalculo1.SetParameterValue("NP", txtNH.Text);
            CRCalculo1.SetParameterValue("NPV", NH);
            CRCalculo1.SetParameterValue("L", txtLuces.Text);
            CRCalculo1.SetParameterValue("LV", Luces);
            CRCalculo1.SetParameterValue("P", txtPuertas.Text);
            CRCalculo1.SetParameterValue("PV", Puertas);
            
            CRCalculo1.SetParameterValue("CT", Total);
            CRCalculo1.SetParameterValue("CDIEZ", Total10);
            CRCalculo1.SetParameterValue("Ton", Ton);
            CRCalculo1.SetParameterValue("Maximo", VentanasMax);


            CRV1.ReportSource = CRCalculo1;
            this.CRV1.ShowFirstPage();
            
                      MemoryStream oStream;
                      oStream = (MemoryStream)
                          CRCalculo1.ExportToStream(
                          CrystalDecisions.Shared.ExportFormatType.PortableDocFormat);

            
//                      SmtpClient SmtpServer = new SmtpClient("mail.aec.mx");
                      SmtpClient SmtpServer = new SmtpClient("mail.ppenaw.com");
                      var mail = new MailMessage();
                      mail.From = new MailAddress("r.larios@ppenaw.com");
                      mail.To.Add(txtCorreo.Text);
                      mail.CC.Add("rafael_larios@yahoo.com");
                      //mail.CC.Add("xixila@gmail.com");
                      mail.Subject = "Estimación de cargas termicas";
                      mail.IsBodyHtml = true;
                      mail.Attachments.Add(new Attachment(oStream, "calculo.pdf")  );

                    string htmlBody;
                      htmlBody =  "Estamos para servirle";
                      mail.Body = htmlBody;
                      SmtpServer.Port = 8889;
                      SmtpServer.UseDefaultCredentials = true;
                      SmtpServer.Credentials = new System.Net.NetworkCredential("r.larios@ppenaw.com", "Papucho_1961");
                      SmtpServer.EnableSsl = false;
                      SmtpServer.Send(mail);
/*
                      Response.Clear();
                      Response.Buffer = true;
                      Response.ContentType = "application/pdf";
                      Response.BinaryWrite(oStream.ToArray());
                      Response.End();
            */
                      
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CRV1.Visible = false;
            Button1.Visible = true;
            Button2.Visible = false;
        }
    }
}
