
<%
    if (session.getAttribute("authStatus") == null) {
        response.sendRedirect("login.jsp");
    }
%>

<%@include file="include/header.jsp" %>
<%@include file="include/navigation.jsp" %>

<div class="container"><br/><br/>
    <div class="row">
        <form class="form" method="POST" action="ProfileServlet" name="preprofile" novalidate="novalidate">
            <fieldset>
                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="username">Username : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7"><input class="form-control" type="text" name="username" value="" readonly=""></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="email">Email : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="email" name="email1" maxlength="40" value="" placeholder="Email used during Registration" readonly="">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="email2">Alternate Email : </label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="email" name="email2" maxlength="40" value="" placeholder="Enter Alternate Email">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="name">Full Name : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="text" name="name" maxlength="30" value="" placeholder="Full Name of the Candidate used Registration" required="" onkeyup="this.value = this.value.toUpperCase()"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="aadhaar">Aadhaar No : </label></div>
                    <div class="col-sm-12 col-lg-7"><input class="form-control" type="text" name="aadhaar" maxlength="12" value="" placeholder="12 Digit Adhaar Number of the Candidate" pattern="[0-9]{12}" onkeyup="this.value = this.value.toUpperCase()"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="mname">Mother's Name : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7"><input class="form-control" type="text" name="mname" maxlength="30" placeholder="Enter mother's name" value="" required="" onkeyup="this.value = this.value.toUpperCase()"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="fname">Father's Name : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7"><input class="form-control" type="text" name="fname" maxlength="30" placeholder="Enter father's name" value="" required="" onkeyup="this.value = this.value.toUpperCase()"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="dob">Date of Birth (DD-MM-YYYY)<span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-2">
                        <select class="form-control" name="date" required="">
                            <option value="">Day</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>                    </select>
                    </div>
                    <div class="col-sm-12 col-lg-2">
                        <select class="form-control" name="month" required="">
                            <option value="">Month</option><option value="01">January</option><option value="02">February</option><option value="03">March</option><option value="04">April</option><option value="05">May</option><option value="06">June</option><option value="07">July</option><option value="08">August</option><option value="09">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option>                    </select>
                    </div>
                    <div class="col-sm-12 col-lg-3">
                        <select class="form-control" name="year" required="">
                            <option value="">Year</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option>                    </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="gender">Gender : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <select class="form-control" name="gender" required="">
                            <option value="">Select Gender</option><option value="MALE">MALE</option><option value="FEMALE">FEMALE</option><option value="OTHER">OTHER</option>                    </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="mobile1">Mobile : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="tel" name="mobile1" pattern="[7-9]{1}[0-9]{9}" value="" placeholder="Please Enter 10 Digit Mobile No" required=""></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="mobile2">Alternate Mobile No. : </label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="text" name="mobile2" pattern="[7-9]{1}[0-9]{9}" value="" placeholder="Please Enter 10 Digit Alternate Mobile No"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="c_add1">Correspondence Address : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="text" id="c_add1" name="c_add1" maxlength="50" value="" required="" placeholder="Street Address" onkeyup="this.value = this.value.toUpperCase()"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="c_add2"></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="text" maxlength="50" id="c_add2" name="c_add2" value="" placeholder="Area and Landmark" onkeyup="this.value = this.value.toUpperCase()">
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="c_district">District &amp; State : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-3">
                        <input class="form-control" type="text" id="c_district" name="c_district" maxlength="30" value="" placeholder="District" onkeyup="this.value = this.value.toUpperCase()">
                    </div>
                    <div class="col-sm-12 col-lg-4">
                        <select class="form-control" id="c_state" name="c_state" required="">
                            <option value="">Select State</option><option value="AP">ANDHRA PRADESH</option><option value="AR">ARUNACHAL PRADESH</option><option value="AS">ASSAM</option><option value="BR">BIHAR</option><option value="CG">CHHATTISGARH</option><option value="GO">GOA</option><option value="GR">GUJARAT</option><option value="HR">HARYANA</option><option value="HP">HIMACHAL PRADESH</option><option value="JK">JAMMU AND KASHMIR</option><option value="JH">JHARKHAND</option><option value="KT">KARNATAKA</option><option value="KR">KERALA</option><option value="MP">MADHYA PRADESH</option><option value="MR">MAHARASHTRA</option><option value="MN">MANIPUR</option><option value="MG">MEGHALAYA</option><option value="MZ">MIZORAM</option><option value="NL">NAGALAND</option><option value="OR">ORISSA</option><option value="PB">PUNJAB</option><option value="RJ">RAJASTHAN</option><option value="SK">SIKKIM</option><option value="TN">TAMIL NADU</option><option value="UP">UTTAR PRADESH</option><option value="UK">UTTARAKHAND</option><option value="WB">WEST BENGAL</option><option value="DL">DELHI</option><option value="OT">OTHERS</option>                    </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="c_pin">PIN : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input id="c_pin" class="form-control" style="width:100px;" maxlength="6" type="text" value="" name="c_pin" pattern="[0-9]{6}" placeholder="PIN"></div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label>Tick this for same Correspondence &amp; Permanent Address</label></div>
                    <div class="checkbox">
                        <div class="col-sm-12 col-lg-7">
                            <label><input id="sam_add" type="checkbox" value="same" onclick="sameaddress(this);" ></label>
                        </div>
                    </div>
                </div>
                <br>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="p_add1">Permanent Address : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" type="text" id="p_add1" name="p_add1" maxlength="50" value="" required="" placeholder="Street Address" onkeyup="this.value = this.value.toUpperCase()">
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="p_add2"></label></div>
                    <div class="col-sm-12 col-lg-7"><input class="form-control" type="text" maxlength="50" id="p_add2" name="p_add2" value="" placeholder="Area and Landmark" onkeyup="this.value = this.value.toUpperCase()"></div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="p_district">District &amp; State : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-3">
                        <input class="form-control" type="text" id="p_district" name="p_district" maxlength="30" value="" placeholder="District" onkeyup="this.value = this.value.toUpperCase()">
                    </div>
                    <div class="col-sm-12 col-lg-4">
                        <select class="form-control" id="p_state" name="p_state" required="">
                            <option value="">Select State</option><option value="AP">ANDHRA PRADESH</option><option value="AR">ARUNACHAL PRADESH</option><option value="AS">ASSAM</option><option value="BR">BIHAR</option><option value="CG">CHHATTISGARH</option><option value="GO">GOA</option><option value="GR">GUJARAT</option><option value="HR">HARYANA</option><option value="HP">HIMACHAL PRADESH</option><option value="JK">JAMMU AND KASHMIR</option><option value="JH">JHARKHAND</option><option value="KT">KARNATAKA</option><option value="KR">KERALA</option><option value="MP">MADHYA PRADESH</option><option value="MR">MAHARASHTRA</option><option value="MN">MANIPUR</option><option value="MG">MEGHALAYA</option><option value="MZ">MIZORAM</option><option value="NL">NAGALAND</option><option value="OR">ORISSA</option><option value="PB">PUNJAB</option><option value="RJ">RAJASTHAN</option><option value="SK">SIKKIM</option><option value="TN">TAMIL NADU</option><option value="UP">UTTAR PRADESH</option><option value="UK">UTTARAKHAND</option><option value="WB">WEST BENGAL</option><option value="DL">DELHI</option><option value="OT">OTHERS</option>                    </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="p_pin">PIN : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <input class="form-control" maxlength="6" style="width:100px;" type="text" id="p_pin" name="p_pin" value="" pattern="[0-9]{6}" placeholder="PIN">
                    </div>
                </div>

                <br><h4>Information for statistical purposes</h4>
                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="p_pin">Nationality : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <select class="form-control" name="nationality" id="nationality" title="Please choose country of citizenship" required="">

                            <option value="">Select</option>

                            <option value="INDIAN">INDIAN</option>

                            <option value="ALBANIAN">ALBANIAN</option>

                            <option value="ALGERIAN">ALGERIAN</option>

                            <option value="AMERICAN">AMERICAN</option>

                            <option value="ANDORRAN">ANDORRAN</option>

                            <option value="ANGOLAN">ANGOLAN</option>

                            <option value="ANTIGUANS">ANTIGUANS</option>

                            <option value="ARGENTINEAN">ARGENTINEAN</option>

                            <option value="ARMENIAN">ARMENIAN</option>

                            <option value="AUSTRALIAN">AUSTRALIAN</option>

                            <option value="AUSTRIAN">AUSTRIAN</option>

                            <option value="AZERBAIJANI">AZERBAIJANI</option>

                            <option value="BAHAMIAN">BAHAMIAN</option>

                            <option value="BAHRAINI">BAHRAINI</option>

                            <option value="BANGLADESHI">BANGLADESHI</option>

                            <option value="BARBADIAN">BARBADIAN</option>

                            <option value="BARBUDANS">BARBUDANS</option>

                            <option value="BATSWANA">BATSWANA</option>

                            <option value="BELARUSIAN">BELARUSIAN</option>

                            <option value="BELGIAN">BELGIAN</option>

                            <option value="BELIZEAN">BELIZEAN</option>

                            <option value="BENINESE">BENINESE</option>

                            <option value="BHUTANESE">BHUTANESE</option>

                            <option value="BOLIVIAN">BOLIVIAN</option>

                            <option value="BOSNIAN">BOSNIAN</option>

                            <option value="BRAZILIAN">BRAZILIAN</option>

                            <option value="BRITISH">BRITISH</option>

                            <option value="BRUNEIAN">BRUNEIAN</option>

                            <option value="BULGARIAN">BULGARIAN</option>

                            <option value="BURKINABE">BURKINABE</option>

                            <option value="BURMESE">BURMESE</option>

                            <option value="BURUNDIAN">BURUNDIAN</option>

                            <option value="CAMBODIAN">CAMBODIAN</option>

                            <option value="CAMEROONIAN">CAMEROONIAN</option>

                            <option value="CANADIAN">CANADIAN</option>

                            <option value="CAPE VERDEAN">CAPE VERDEAN</option>

                            <option value="CENTRAL AFRICAN">CENTRAL AFRICAN</option>

                            <option value="CHADIAN">CHADIAN</option>

                            <option value="CHILEAN">CHILEAN</option>

                            <option value="CHINESE">CHINESE</option>

                            <option value="COLOMBIAN">COLOMBIAN</option>

                            <option value="COMORAN">COMORAN</option>

                            <option value="CONGOLESE">CONGOLESE</option>

                            <option value="CONGOLESE">CONGOLESE</option>

                            <option value="COSTA RICAN">COSTA RICAN</option>

                            <option value="CROATIAN">CROATIAN</option>

                            <option value="CUBAN">CUBAN</option>

                            <option value="CYPRIOT">CYPRIOT</option>

                            <option value="CZECH">CZECH</option>

                            <option value="DANISH">DANISH</option>

                            <option value="DJIBOUTI">DJIBOUTI</option>

                            <option value="DOMINICAN">DOMINICAN</option>

                            <option value="DOMINICAN">DOMINICAN</option>

                            <option value="DUTCH">DUTCH</option>

                            <option value="DUTCHMAN">DUTCHMAN</option>

                            <option value="DUTCHWOMAN">DUTCHWOMAN</option>

                            <option value="EAST TIMORESE">EAST TIMORESE</option>

                            <option value="ECUADOREAN">ECUADOREAN</option>

                            <option value="EGYPTIAN">EGYPTIAN</option>

                            <option value="EMIRIAN">EMIRIAN</option>

                            <option value="EQUATORIAL GUINEAN">EQUATORIAL GUINEAN</option>

                            <option value="ERITREAN">ERITREAN</option>

                            <option value="ESTONIAN">ESTONIAN</option>

                            <option value="ETHIOPIAN">ETHIOPIAN</option>

                            <option value="FIJIAN">FIJIAN</option>

                            <option value="FILIPINO">FILIPINO</option>

                            <option value="FINNISH">FINNISH</option>

                            <option value="FRENCH">FRENCH</option>

                            <option value="GABONESE">GABONESE</option>

                            <option value="GAMBIAN">GAMBIAN</option>

                            <option value="GEORGIAN">GEORGIAN</option>

                            <option value="GERMAN">GERMAN</option>

                            <option value="GHANAIAN">GHANAIAN</option>

                            <option value="GREEK">GREEK</option>

                            <option value="GRENADIAN">GRENADIAN</option>

                            <option value="GUATEMALAN">GUATEMALAN</option>

                            <option value="GUINEA-BISSAUAN">GUINEA-BISSAUAN</option>

                            <option value="GUINEAN">GUINEAN</option>

                            <option value="GUYANESE">GUYANESE</option>

                            <option value="HAITIAN">HAITIAN</option>

                            <option value="HERZEGOVINIAN">HERZEGOVINIAN</option>

                            <option value="HONDURAN">HONDURAN</option>

                            <option value="HUNGARIAN">HUNGARIAN</option>

                            <option value="I-KIRIBATI">I-KIRIBATI</option>

                            <option value="ICELANDER">ICELANDER</option>

                            <!--    <option value="INDIAN">INDIAN</option>-->

                            <option value="INDONESIAN">INDONESIAN</option>

                            <option value="IRAN">IRAN</option>

                            <option value="IRAQI">IRAQI</option>

                            <option value="IRISH">IRISH</option>

                            <option value="ISRAELI">ISRAELI</option>

                            <option value="ITALIAN">ITALIAN</option>

                            <option value="IVORIAN">IVORIAN</option>

                            <option value="JAMAICAN">JAMAICAN</option>

                            <option value="JAPANESE">JAPANESE</option>

                            <option value="JORDANIAN">JORDANIAN</option>

                            <option value="KAZAKHSTANI">KAZAKHSTANI</option>

                            <option value="KENYAN">KENYAN</option>

                            <option value="KITTIAN AND NEVISIAN">KITTIAN AND NEVISIAN</option>

                            <option value="KUWAITI">KUWAITI</option>

                            <option value="KYRGYZ">KYRGYZ</option>

                            <option value="LAOTIAN">LAOTIAN</option>

                            <option value="LATVIAN">LATVIAN</option>

                            <option value="LEBANESE">LEBANESE</option>

                            <option value="LIBERIAN">LIBERIAN</option>

                            <option value="LIBYAN">LIBYAN</option>

                            <option value="LIECHTENSTEINER">LIECHTENSTEINER</option>

                            <option value="LITHUANIAN">LITHUANIAN</option>

                            <option value="LUXEMBOURGER">LUXEMBOURGER</option>

                            <option value="MACEDONIAN">MACEDONIAN</option>

                            <option value="MALAGASY">MALAGASY</option>

                            <option value="MALAWIAN">MALAWIAN</option>

                            <option value="MALAYSIAN">MALAYSIAN</option>

                            <option value="MALDIVAN">MALDIVAN</option>

                            <option value="MALIAN">MALIAN</option>

                            <option value="MALTESE">MALTESE</option>

                            <option value="MARSHALLESE">MARSHALLESE</option>

                            <option value="MAURITANIAN">MAURITANIAN</option>

                            <option value="MAURITIAN">MAURITIAN</option>

                            <option value="MEXICAN">MEXICAN</option>

                            <option value="MICRONESIAN">MICRONESIAN</option>

                            <option value="MOLDOVAN">MOLDOVAN</option>

                            <option value="MONACAN">MONACAN</option>

                            <option value="MONGOLIAN">MONGOLIAN</option>

                            <option value="MOROCCAN">MOROCCAN</option>

                            <option value="MOSOTHO">MOSOTHO</option>

                            <option value="MOTSWANA">MOTSWANA</option>

                            <option value="MOZAMBICAN">MOZAMBICAN</option>

                            <option value="NAMIBIAN">NAMIBIAN</option>

                            <option value="NAURUAN">NAURUAN</option>

                            <option value="NEPALESE">NEPALESE</option>

                            <option value="NETHERLANDER">NETHERLANDER</option>

                            <option value="NEW ZEALANDER">NEW ZEALANDER</option>

                            <option value="NI-VANUATU">NI-VANUATU</option>

                            <option value="NICARAGUAN">NICARAGUAN</option>

                            <option value="NIGERIEN">NIGERIEN</option>

                            <option value="NORTH KOREAN">NORTH KOREAN</option>

                            <option value="NORTHERN IRISH">NORTHERN IRISH</option>

                            <option value="NORWEGIAN">NORWEGIAN</option>

                            <option value="OMANI">OMANI</option>

                            <option value="PAKISTANI">PAKISTANI</option>

                            <option value="PALAUAN">PALAUAN</option>

                            <option value="PANAMANIAN">PANAMANIAN</option>

                            <option value="PAPUA NEW GUINEAN">PAPUA NEW GUINEAN</option>

                            <option value="PARAGUAYAN">PARAGUAYAN</option>

                            <option value="PERUVIAN">PERUVIAN</option>

                            <option value="POLISH">POLISH</option>

                            <option value="PORTUGUESE">PORTUGUESE</option>

                            <option value="QATARI">QATARI</option>

                            <option value="ROMANIAN">ROMANIAN</option>

                            <option value="RUSSIAN">RUSSIAN</option>

                            <option value="RWANDAN">RWANDAN</option>

                            <option value="SAINT LUCIAN">SAINT LUCIAN</option>

                            <option value="SALVADORAN">SALVADORAN</option>

                            <option value="SAMOAN">SAMOAN</option>

                            <option value="SAN MARINESE">SAN MARINESE</option>

                            <option value="SAO TOMEAN">SAO TOMEAN</option>

                            <option value="SAUDI">SAUDI</option>

                            <option value="SCOTTISH">SCOTTISH</option>

                            <option value="SENEGALESE">SENEGALESE</option>

                            <option value="SERBIAN">SERBIAN</option>

                            <option value="SEYCHELLOIS">SEYCHELLOIS</option>

                            <option value="SIERRA LEONEAN">SIERRA LEONEAN</option>

                            <option value="SINGAPOREAN">SINGAPOREAN</option>

                            <option value="SLOVAKIAN">SLOVAKIAN</option>

                            <option value="SLOVENIAN">SLOVENIAN</option>

                            <option value="SOLOMON ISLANDER">SOLOMON ISLANDER</option>

                            <option value="SOMALI">SOMALI</option>

                            <option value="SOUTH AFRICAN">SOUTH AFRICAN</option>

                            <option value="SOUTH KOREAN">SOUTH KOREAN</option>

                            <option value="SPANISH">SPANISH</option>

                            <option value="SRI LANKAN">SRI LANKAN</option>

                            <option value="SUDANESE">SUDANESE</option>

                            <option value="SURINAMER">SURINAMER</option>

                            <option value="SWAZI">SWAZI</option>

                            <option value="SWEDISH">SWEDISH</option>

                            <option value="SWISS">SWISS</option>

                            <option value="SYRIAN">SYRIAN</option>

                            <option value="TAIWANESE">TAIWANESE</option>

                            <option value="TAJIK">TAJIK</option>

                            <option value="TANZANIAN">TANZANIAN</option>

                            <option value="THAI">THAI</option>

                            <option value="TOGOLESE">TOGOLESE</option>

                            <option value="TONGAN">TONGAN</option>

                            <option value="TRINIDADIAN OR TOBAGONIAN">TRINIDADIAN OR TOBAGONIAN</option>

                            <option value="TUNISIAN">TUNISIAN</option>

                            <option value="TURKISH">TURKISH</option>

                            <option value="TUVALUAN">TUVALUAN</option>

                            <option value="UGANDAN">UGANDAN</option>

                            <option value="UKRAINIAN">UKRAINIAN</option>

                            <option value="URUGUAYAN">URUGUAYAN</option>

                            <option value="UZBEKISTANI">UZBEKISTANI</option>

                            <option value="VENEZUELAN">VENEZUELAN</option>

                            <option value="VIETNAMESE">VIETNAMESE</option>

                            <option value="WELSH">WELSH</option>

                            <option value="WELSH">WELSH</option>

                            <option value="YEMENITE">YEMENITE</option>

                            <option value="ZAMBIAN">ZAMBIAN</option>

                            <option value="ZIMBABWEAN">ZIMBABWEAN</option>

                            <option value="OTHERS">OTHERS</option>

                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="religion">Religion : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-7">
                        <select class="form-control" name="religion" title="Please choose religion" required="">
                            <option value="">Select</option>
                            <option value="B">Budhism</option>
                            <option value="C">Christianilty</option>
                            <option value="H">Hinduism</option>
                            <option value="M">Islam</option>
                            <option value="J">Jainism</option>
                            <option value="S">Sikkhism</option>
                            <option value="O">Others</option>
                        </select>
                    </div>
                </div>


                <div class="row">
                    <div class="col-sm-12 col-lg-5"><label for="hall_req">Hostel Accommodation required : <span class="error">*</span></label></div>
                    <div class="col-sm-12 col-lg-5">
                        <select class="form-control" name="hall_req" required="">
                            <option value="">Select</option>
                            <option value="YES">YES</option><option value="NO">NO</option>                    </select>
                    </div>
                    <div class="col-sm-12 col-lg-5"></div>
                    <div class="col-sm-12 col-lg-7">
                        <p>Hostel accommodation is not guaranteed. It is subject to availability of seats in the hostel at the time of admission.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-lg-5"></div>
                    <div class="col-sm-12 col-lg-5">
                        <input class="btn btn-primary" type="submit" name="saveProfile" value="Save Profile" />
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>

<%@include file="include/footer.jsp" %>