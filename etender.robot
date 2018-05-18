*** Settings ***
Library  Selenium2Screenshots
Library  Selenium2Library
Library  String
Library  DateTime
Library  etender_service.py

*** Variables ***
${locator.tenderId}                                            xpath=//*[@id='tenderidua']/b
${locator.title}                                               id=tenderTitle
${locator.status}                                              id=tenderStatus
${locator.description}                                         id=tenderDescription
${locator.minimalStep.amount}                                  id=lotMinimalStep_0
${locator.procuringEntity.name}                                id=tenderOwner
${locator.procuringEntity.address.countryName}                 id=customer_country
${locator.procuringEntity.address.locality}                    id=customer_city
${locator.procuringEntity.address.postalCode}                  id=customer_postIndex
${locator.procuringEntity.address.region}                      id=customer_region
${locator.procuringEntity.address.streetAddress}               id=customer_addressStr
${locator.procuringEntity.contactPoint.name}                   id=contactPoint_name
${locator.procuringEntity.contactPoint.telephone}              id=contactPoint_telephone
${locator.procuringEntity.contactPoint.url}                    id=contactPoint_url
${locator.procuringEntity.identifier.legalName}                id=tenderOwner
${locator.procuringEntity.identifier.scheme}                   id=organization_scheme
${locator.procuringEntity.identifier.id}                       id=organization_identifier
${locator.value.amount}                                        id=tenderBudget
${locator.tenderPeriod.startDate}                              id=tenderStart
${locator.tenderPeriod.endDate}                                id=tenderEnd
${locator.enquiryPeriod.startDate}                             id=enquiryStart
${locator.enquiryPeriod.endDate}                               id=enquiryEnd
${locator.causeDescription}                                    id=causeDescription
${locator.cause}                                               id=cause
${locator.qualificationPeriod.endDate}                         id=qualificationPeriod_endDate
${locator.qualifications[0].status}                            xpath=(//div[@ng-controller="qualificationsCtrl"]//div[@class = "row"]/div[contains(.,"Статус:")]/following-sibling::div)[1]
${locator.qualifications[1].status}                            xpath=(//div[@ng-controller="qualificationsCtrl"]//div[@class = "row"]/div[contains(.,"Статус:")]/following-sibling::div)[2]
${locator.contracts[0].status}                                 xpath=//div[@class = 'row']/div[contains(.,'Статус договору:')]/following-sibling::div
${locator.items[0].description}                                id=item_description_00
${locator.items[0].deliveryDate.startDate}                     id=delivery_start_00
${locator.items[0].deliveryDate.endDate}                       id=delivery_end_00
${locator.items[0].deliveryLocation.latitude}                  id=delivery_latitude0
${locator.items[0].deliveryLocation.longitude}                 id=delivery_longitude0
${locator.items[0].deliveryAddress.postalCode}                 id=delivery_postIndex_00
${locator.items[0].deliveryAddress.countryName}                id=delivery_country_00
${locator.items[0].deliveryAddress.region}                     id=delivery_region_00
${locator.items[0].deliveryAddress.locality}                   id=delivery_city_00
${locator.items[0].deliveryAddress.streetAddress}              id=delivery_addressStr_00
${locator.items[0].classification.scheme}                      xpath=//table[contains(@class,"itemTable")]//th[contains(.,"Класифікатор ")]
${locator.items[0].classification.id}                          id=classification_code_00
${locator.items[0].classification.description}                 id=classification_name_00
${locator.items[0].additionalClassifications[0].scheme}        id=additionalClassification_scheme0
${locator.items[0].additionalClassifications[0].id}            id=additionalClassification_id0
${locator.items[0].additionalClassifications[0].description}   id=additionalClassification_desc0
${locator.items[0].unit.code}                                  id=item_unit_00
${locator.items[0].quantity}                                   id=item_quantity_00
${locator.items[0].unit.name}                                  id=item_unit_00
${locator.awards[0].complaintPeriod.endDate}                   xpath=//div[@ng-if="award.complaintPeriod.endDate"]/div[2]/span
${locator.awards[0].status}                                    xpath=//div[@class = 'row']/div[contains(.,'Статус:')]/following-sibling::div
${locator.awards[0].value.valueAddedTaxIncluded}               xpath=//div[@class = 'row']/div[contains(.,'Пропозиція:')]/following-sibling::div/span/i
${locator.awards[0].value.currency}                            xpath=//div[@class = 'row']/div[contains(.,'Пропозиція:')]/following-sibling::div/span
${locator.awards[0].value.amount}                              xpath=//div[@class = 'row']/div[contains(.,'Пропозиція:')]/following-sibling::div/span
${locator.awards[0].suppliers[0].address.countryName}          id=awardCountry_0
${locator.awards[0].suppliers[0].address.locality}             id=awardCity_0
${locator.awards[0].suppliers[0].address.postalCode}           id=awardIndex_0
${locator.awards[0].suppliers[0].address.region}               id=awardRegion_0
${locator.awards[0].suppliers[0].address.streetAddress}        id=awardAddressStr_0
${locator.awards[0].suppliers[0].name}                         xpath=//span[@id="awardContactPoint"]/u
${locator.awards[0].suppliers[0].contactPoint.telephone}       xpath=//span[@id="awardContactPoint"]/following-sibling::div//p[contains(.,"Телефон:")]
${locator.awards[0].suppliers[0].contactPoint.name}            xpath=//span[@id="awardContactPoint"]/following-sibling::div//p[contains(.,"Контактна особа:")]
${locator.awards[0].suppliers[0].contactPoint.email}           xpath=//span[@id="awardContactPoint"]/following-sibling::div//p[contains(.,"email:")]
${locator.awards[0].suppliers[0].identifier.scheme}            xpath=//span[@id="awardContactPoint"]/following-sibling::div//p/b[contains(.,"Код ")]
${locator.awards[0].suppliers[0].identifier.legalName}         xpath=//span[@id="awardContactPoint"]/u
${locator.awards[0].suppliers[0].identifier.id}                xpath=//span[@id="awardContactPoint"]/following-sibling::div//p[contains(.,"Код ")]
${locator_document_title}                                      xpath=//td[contains(@class,"doc-name")]//a[contains(.,"XX_doc_id_XX")]
${locator_document_href}                                       xpath=//td[contains(@class,"doc-name")]//a[contains(.,"XX_doc_id_XX")]@href
${locator_document_description}                                xpath=//td[contains(@class,"doc-name")]//a[contains(.,"XX_doc_id_XX")]/following-sibling::p
${locator_lot_title}                                           xpath=//span[contains(., "XX_lot_id_XX") and @ng-bind="::lot.title"]
${locator_lot_description}                                     xpath=//div[@id="treeLot0"]//*[@id="lotDescription_0"]
${locator_lot_value.currency}                                  id=lotCurrency_0
${locator_lot_value.amount}                                    id=lotValue_0
${locator_lot_value.valueAddedTaxIncluded}                     xpath=//tender-detailes-about//*[@id="lotVatInc_0"]
${locator_lot_minimalStep.amount}                              xpath=//div[@id="treeLot0"]//*[@id="lotMinimalStep_0"]
${locator_lot_minimalStep.currency}                            xpath=//div[@id="treeLot0"]//*[@id="lotMinimalStep_0"]
${locator_lot_minimalStep.valueAddedTaxIncluded}               xpath=//tender-detailes-about//*[@id="lotVatInc_0"]
${locator.value.currency}                                      id=tenderCurrency
${locator.value.valueAddedTaxIncluded}                         id=includeVat
${locator.bids}                                                id=ParticipiantInfo_0
${locator_block_overlay}                                       xpath=//div[@class='blockUI blockOverlay']
${locator_question_title}                                      xpath=//span[contains(@id,'quest_title_') and contains(text(),'XX_que_id_XX')]
${locator_feature_title}                                       xpath=//*[contains(@ng-bind,'eature.title') and contains(text(),'XX_feature_id_XX')]
${locator_feature_description}                                 xpath=//*[contains(@ng-bind,'eature.title') and contains(text(),'XX_feature_id_XX')]/../../following-sibling::div//*[contains(@ng-bind,'eature.description')]
${locator_feature_featureOf}                                   xpath=//div[contains(@ng-repeat,"eature")]//span[contains(@ng-bind,"eature.title") and contains(.,"XX_feature_id_XX")]
${locator_item_description}                                    xpath=//p[contains(.,"XX_item_id_XX")]
${locator_item_classification.scheme}                          xpath=//table[contains(@class,"itemTable")]//th[contains(.,"Класифікатор ")]
${locator_item_classification.id}                              xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"classification_code_")]
${locator_item_classification.description}                     xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"classification_name_")]
${locator_item_additionalClassifications[0].scheme}            xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//b[contains(.,"Класифікатор ")]
${locator_item_additionalClassifications[0].id}                xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"additionalClassification_id")]
${locator_item_additionalClassifications[0].description}       xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"additionalClassification_desc")]
${locator_item_quantity}                                       xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"item_quantity_")]
${locator_item_unit.name}                                      xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"item_unit_")]
${locator_item_unit.code}                                      xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"item_unit_")]
${locator_item_deliveryDate.endDate}                           xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"delivery_end_")]
${locator_item_deliveryAddress.countryName}                    xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"delivery_country_")]
${locator_item_deliveryAddress.postalCode}                     xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"delivery_postIndex_")]
${locator_item_deliveryAddress.region}                         xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"delivery_region_")]
${locator_item_deliveryAddress.locality}                       xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"delivery_city_")]
${locator_item_deliveryAddress.streetAddress}                  xpath=//p[contains(.,"XX_item_id_XX")]/../../parent::tr//*[starts-with(@id,"delivery_addressStr_")]
${huge_timeout_for_visibility}                                 300
${locator.search_tender}                                       xpath=//input[@type='text' and @placeholder='Пошук за номером закупівлі']
${tenderpage}


*** Keywords ***
Підготувати клієнт для користувача
  [Arguments]  ${username}
  [Documentation]  Відкрити браузер, створити об’єкт api wrapper, тощо
  Open Browser  ${USERS.users['${username}'].homepage}  ${USERS.users['${username}'].browser}  alias=${username}
  Set Window Size  @{USERS.users['${username}'].size}
  Set Window Position  @{USERS.users['${username}'].position}
  Run Keyword If  '${username}' != 'Etender_Viewer'  Login  ${username}
  Дочекатись зникнення blockUI  15

Wait Scroll Click
  [Arguments]  ${locator}  ${timeout}=5
  Wait and Click  ${locator}  ${timeout}  True

Wait and Click
  [Arguments]  ${locator}  ${timeout}=5  ${scroll}=False
  [Documentation]  Wait for visibility and then click
  Wait Until Element Is Visible  ${locator}  ${timeout}
  Run Keyword If  '${scroll}'=='True'  scrollIntoView by script  ${locator}
  Click Element  ${locator}

Wait and Select By Label
  [Arguments]  ${locator}  ${data}  ${timeout}=5
  [Documentation]  Wait for visibility and then select by label
  Wait Until Element Is Visible     ${locator}  ${timeout}
  Select From List By Label         ${locator}  ${data}

Wait and Input
  [Arguments]  ${locator}  ${data}  ${timeout}=5
  [Documentation]  Wait for visibility and then input text
  Wait Until Element Is Visible  ${locator}  ${timeout}
  Input text  ${locator}  ${data}

Дочекатись зникнення blockUI
  [Arguments]  ${timeout}=5
  Wait Until Page Does Not Contain Element  xpath=//div[@class='blockUI blockOverlay']  ${timeout}

Підготувати дані для оголошення тендера
  [Arguments]  ${username}  ${tender_data}  ${username_2}
  ${tender_data}=  change_data  ${tender_data}
  Log  ${tender_data}
  Log  ${username}
  Log  ${username_2}
  [return]  ${tender_data}

Login
  [Arguments]  ${username}
  Wait and Click   id=login     15
  Wait and Input   id=inputUsername     ${USERS.users['${username}'].login}     15
  Wait and Input   id=inputPassword     ${USERS.users['${username}'].password}  15
  Wait and Click   id=btn_submit
  Go To  ${USERS.users['${username}'].homepage}
  Дочекатись зникнення blockUI  15

Створити тендер
  [Arguments]  ${username}  ${tender_data}
  ${tender_data}=       Get From Dictionary     ${tender_data}             data
  ${items}=             Get From Dictionary     ${tender_data}             items
  ${title}=             Get From Dictionary     ${tender_data}             title
  ${title_en}=          Get From Dictionary     ${tender_data}             title_en
  ${description}=       Get From Dictionary     ${tender_data}             description
  ${budget}=            Get From Dictionary     ${tender_data.value}       amount
  ${budgetToStr}=       float_to_string_2f      ${budget}      # at least 2 fractional point precision, avoid rounding

  ${status}  ${methodType}=  Run Keyword And Ignore Error  Get From Dictionary  ${tender_data}  procurementMethodType
  log to console  check presence of procurementMethodType in dictionary: ${status}
  ${methodType}=  Run Keyword IF  '${status}' != 'PASS'  Set Variable  belowThreshold
  ...             ELSE  Set Variable  ${methodType}
  Set To Dictionary  ${USERS.users['${username}']}  method_type=${methodType}

  Click Element         id=qa_myTenders  # Мої закупівлі
  Дочекатись зникнення blockUI
  Wait and Click        xpath=//a[@data-target='#procedureType']
  ${procedure_type}=    get_procedure_type  ${methodType}
  Wait and Select By Label  id=chooseProcedureType  ${procedure_type}
  Wait and Click        id=goToCreate
  Дочекатись зникнення blockUI

  ${status}  ${lots}=  Run Keyword And Ignore Error  Get From Dictionary  ${tender_data}  lots
  log to console  presence of lots: ${status}
  ${lots_count}=  Run Keyword IF  '${status}' != 'PASS'  Set Variable  0
  ...             ELSE  Get Length  ${lots}

  Input text    id=title    ${title}
  Run Keyword If    '${methodType}' == 'aboveThresholdEU'   Input text    id=titleEN    ${title_en}
  Input text    id=description            ${description}
  Додати причину з описом при наявності  ${tender_data}

  Додати лот при наявності і внести значення  ${lots_count}  ${lots}

  Додати нецінові показники при наявності       ${tender_data}
  Додати дати при наявності    ${tender_data}  ${methodType}
  Input text    id=lotValue_0        ${budgetToStr}
  Wait Scroll Click     id=valueAddedTaxIncluded
  Додати мінімальний крок при наявності  ${tender_data}
  Додати предмети  ${methodType}  ${items}
  Wait Scroll Click     id=createTender
  Sleep   60
  Reload Page
  Wait Until Keyword Succeeds        10 min  30 sec  Дочекатися завершення обробки тендера
  Run Keyword And Return  Get Text  ${locator.tenderId}

Додати лот при наявності і внести значення
  [Arguments]  ${lots_count}  ${lots}
  Return From Keyword If  '${lots_count}' == '0'
  ${title}=         Get From Dictionary  ${lots[0]}  title
  ${description}=   Get From Dictionary  ${lots[0]}  description
  Click Element     id=isMultilots
  Wait and Input    id=lotTitle_0   ${title}
  Wait and Input    id=lotDescription_0  ${description}

Додати нецінові показники при наявності
  [Arguments]  ${tender_data}
  ${status}  ${features}=  Run Keyword And Ignore Error  Get From Dictionary  ${tender_data}  features
  log to console  presence of features: ${status}
  ${features_count}=  Run Keyword IF  '${status}' != 'PASS'  Return From Keyword
  ...                 ELSE  Get Length  ${features}
  :FOR  ${i}  IN RANGE  ${features_count}
  \     add feature  ${features[${i}]}  0

Додати мінімальний крок при наявності
  [Arguments]  ${data}
  ${status}  ${step_rate}=  Run Keyword And Ignore Error  Get From Dictionary  ${data.minimalStep}  amount
  log to console  check presence of minimalStep.amount in dictionary: ${status}
  Return From Keyword If  '${status}' != 'PASS'
  ${step_rateToStr}=  float_to_string_2f  ${step_rate}   # at least 2 fractional point precision, avoid rounding
  Input text  id=minimalStep_0  ${step_rateToStr}

Додати причину з описом при наявності
  [Arguments]  ${data}
  ${status}  ${cause}=  Run Keyword And Ignore Error  Get From Dictionary  ${data}  cause
  log to console  check presence of cause in dictionary: ${status}
  Return From Keyword If  '${status}' != 'PASS'
  Select From List By Value  id=cause             ${cause}
  Input text                 id=causeDescription  ${data['causeDescription']}

Додати дати при наявності
  [Arguments]  ${tender_data}  ${methodType}
  ${status}  ${data}=  Run Keyword And Ignore Error  get_all_etender_dates  ${tender_data}
  Return From Keyword If  '${status}' != 'PASS'
  Input text  id=TenderPeriod           ${data.tenderEnd.date}
  Input text  id=TenderPeriod_time      ${data.tenderEnd.time}
  Return From Keyword If  '${methodType}' != 'belowThreshold'
  Input text  id=startDate              ${data.tenderStart.date}
  Input text  id=startDate_time         ${data.tenderStart.time}
  Input text  id=enquiryPeriod          ${data.enquiryEnd.date}
  Input text  id=enquiryPeriod_time     ${data.enquiryEnd.time}

add feature
  [Arguments]  ${feature}  ${feature_index}
  ${target}=        Set Variable    ${feature['featureOf'].replace('tenderer', 'tender')}  #strange name from prozorro
  ${options}=       Get From Dictionary  ${feature}  enum
  ${number_of_options}=  Get Length  ${options}

  Wait Scroll Click     xpath=//add-features[contains(@feature-sector,"${target}")]//span[@ng-click="addFeature()"]
  Wait and Input        xpath=//input[@name="feature-${target}${feature_index}"]  ${feature['title']}
  Wait and Input        xpath=//input[@name="feature-${target}${feature_index}"]/parent::td/following-sibling::td/input[@type="text"]  ${feature['description']}
  :FOR  ${i}  IN RANGE  ${number_of_options}-2  # 2 already exist
  \     Wait Scroll Click   xpath=//add-features[contains(@feature-sector,"${target}")]//button[@ng-click="addFeatureOption(feature)"]

  :FOR  ${i}  IN RANGE  ${number_of_options}
  \     ${opt_title}=   Get From Dictionary     ${feature.enum[${i}]}  title
  \     ${opt_value}=   Convert To Number       ${feature.enum[${i}]['value']}
  \     ${opt_value}=   Convert To Integer      ${opt_value*100}
  \     ${opt_value}=   Convert To String       ${opt_value}
  \     ${index}=       Run Keyword If  '${opt_value}'!='0'  Evaluate  ${i}+1
  \     ...     ELSE    Set Variable  0
  \     Wait and Input  xpath=//*[@name="feature-${target}Option${feature_index}${index}"]  ${opt_title}
  \     Run Keyword If  '${opt_value}'!='0'  Input text  id=feature-${target}OptionValue${feature_index}${index}  ${opt_value}

Створити план
  [Arguments]  ${username}  ${arguments}
  Log  ${arguments}
  ${plan}=              Get From Dictionary     ${arguments}                    data
  ${items}=             Get From Dictionary     ${plan}                         items
  ${description}=       Get From Dictionary     ${plan.budget}                  description
  ${amount}=            Get From Dictionary     ${plan.budget}                  amount
  ${amount}=            float_to_string_2f      ${amount}
  ${number_of_items}=   Get Length              ${items}
  ${cpv_id}=            Get From Dictionary     ${plan.classification}          id
  Дочекатись зникнення blockUI
  Wait and Click        id=qa_myPlans
  Wait and Click        xpath==//a[@href="#/createPlan"]
  Wait and Input        id=description          ${description}
  Input text            id=value                ${amount}
  Select From List By Index     xpath=//select[@name="startDateMonth"]          6
  Click element         xpath=//input[@class="btn-cpv"]
  Wait and Input        xpath=//div[@id="planClassification"]//input                           ${cpv_id}
  Sleep  3
  Click element         xpath=//td[contains(.,'${cpv_id}')]
  Click element         xpath=//button[contains(.,'Зберегти та вийти')]
  :FOR  ${i}  IN RANGE  ${number_of_items}
  \     Wait Scroll Click       xpath=//button[@ng-click='addItem()']
  \     ${item_description}=    Get From Dictionary         ${items[${i}]}          description
  \     Input text              id=itemsDescription${i}     ${item_description}
  \     ${item_quantity}=       Get From Dictionary         ${items[${i}]}          quantity
  \     Input text              id=itemsQuantity${i}        ${item_quantity}
  \     ${item_unit}=           Get From Dictionary         ${items[${i}].unit}     name
  \     Input text              xpath=//unit[@id='unit_${i}']//input[@type="search"]                 ${item_unit}
  \     Press Key               xpath=//unit[@id='unit_${i}']//input[@type="search"]                 \\13
  \     Wait and Click          xpath=//div[contains(@ng-model,'unit.selected')]//span[@class="ui-select-highlight"]
  Wait Scroll Click     xpath=//button[contains(., 'Створити план')]
  Дочекатись зникнення blockUI
  Wait Until Keyword Succeeds   2x  10 sec  Дочекатися завершення обробки плану
  Run Keyword And Return    Get Text  id=planId_0

Опрацювати дотаткові класифікації
  [Arguments]  ${additionalClassifications}  ${index}
  # TODO: Обробляти випадок коли є більше однієї додаткової класифікації
  ${scheme}=  Get From Dictionary  ${additionalClassifications[0]}  scheme
  Run Keyword If  '${scheme}' in ('INN','ДКПП')  Вказати ${scheme} дотаткову класифікацію  ${additionalClassifications[0]}  ${index}
  ...         ELSE  Вказати дотаткову класифікацію  ${additionalClassifications[0]}  ${index}  ${scheme}
  Дочекатись зникнення blockUI

Вказати INN дотаткову класифікацію
  [Arguments]  ${additionalClassification}  ${index}
  ${description}=  Get From Dictionary  ${additionalClassification}  description
  Wait and Click    xpath=//input[@id='openAddClassificationInnModal0${index}']
  Wait and Input    xpath=//div[@id="addClassificationInn_0_${index}" and contains(@class,"top")]//input  ${description}
  Дочекатись зникнення blockUI
  Wait and Click    xpath=//td[contains(., '${description}')]
  Wait and Click    xpath=//div[@id="addClassificationInn_0_${index}" and contains(@class,"top")]//button[@id="addClassification_choose"]

Вказати дотаткову класифікацію
  [Arguments]  ${additionalClassification}  ${index}  ${scheme}
  [Documentation]  Works same for all DK0** schemes
  ${description}=   Get From Dictionary  ${additionalClassification}  description
  Wait and Click    id=openAddClassificationModal0${index}0
  Wait and Select By Label  xpath=//div[@id="addClassification" and contains(@class,"modal")]//select[@name="dkScheme"]  ${scheme}
  Wait and Input    xpath=//div[@id="addClassification" and contains(@class,"modal")]//input  ${description}
  Дочекатись зникнення blockUI
  Wait and Click    xpath=//td[contains(., '${description}')]
  Wait and Click    xpath=//div[@id="addClassification" and contains(@class,"modal")]//*[@id="addClassification_choose"]

Вказати ДКПП дотаткову класифікацію
  [Arguments]  ${additionalClassification}  ${index}
  log  Це щось старе, і його мають прибрати. Не буду нічого тут робити!  WARN

Дочекатися завершення обробки тендера
  Reload Page
  Wait Until Element Is Visible      ${locator.tenderId}  30
  ${tender_id}=                      Get Text  ${locator.tenderId}
  Should Match Regexp                ${tender_id}  UA-\\d{4}-\\d{2}-\\d{2}-\\d+.*

Дочекатися завершення обробки плану
  Reload Page
  Дочекатись зникнення blockUI
  Wait Until Element Is Visible      id=planId_0  30
  ${plan_id}=                        Get Text  id=planId_0
  Log  ${plan_id}
  Should Match Regexp                ${plan_id}  UA-P-\\d{4}-.*

Задати запитання на тендер
  [Arguments]  ${username}  ${tender_uaid}  ${question}
  Задати запитання на  Тендер  0  ${question}

Задати запитання на предмет
  [Arguments]  ${username}  ${tender_uaid}  ${item_id}  ${question}
  Задати запитання на  Предмет  0  ${question}

Задати запитання на лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${question}
  Задати запитання на  Лот  ${lot_id}  ${question}

Задати запитання на
  [Arguments]  ${entity}  ${lot_id}  ${question}
  Відкрити розділ запитань
  Wait and Click    id=askQuestion
  Дочекатись зникнення blockUI
  Run Keyword If  '${entity}'=='Лот'    Вибрати лот запитання  ${lot_id}
  Wait and Input    id=title            ${question.data.title}
  Input text        id=description      ${question.data.description}
  Click Element     id=sendQuestion
  Sleep  15  # wait for export

Вибрати лот запитання
  [Arguments]  ${lot_id}
  Select From List By Label  xpath=//*[@ng-model="vm.questionTo"]  Лоту
  ${lot}=   Get Text    xpath=//option[contains(.,'${lot_id}')]
  Select From List By Label  xpath=//*[@ng-model="vm.question.lot"]     ${lot}

Завантажити док
  [Arguments]  ${username}  ${file}  ${locator}  ${locator2}=-1
  # TODO: Rework this tricky behavior someday?
  # Autotest cannot upload file directly, because there is no INPUT element on page. Need to click on button first,
  # but this will open OS file selection dialog. So we close and reopen browser to get rid of this dialog
  ${tmp_location}=  Get Location
  Wait Scroll Click     ${locator}
  Choose File     xpath=//input[@type="file"]  ${file}
  Run Keyword Unless  '${locator2}'=='-1'  Wait and Click    ${locator2}   #  if need to press key to upload like in awards
  Sleep   5
  Capture Page Screenshot
  ${status}=  Run Keyword And Return Status  Page Should Not Contain  Internal Server Error
  Close Browser
  etender.Підготувати клієнт для користувача  ${username}
  Go To  ${tmp_location}
  Sleep  5
  Run Keyword If  '${status}'=='False'  Fail  There was a problem during document upload

Завантажити документ
  [Arguments]  ${username}  ${file}  ${tender_uaid}
  [Documentation]
  ...   Загрузка дока в тендер
  Wait and Select By Label      xpath=//div[@id="tree-01-02"]//select[@id="docType"]  Інші
  Завантажити док  ${username}  ${file}  id=tend_doc_add

Додати предмети
  [Arguments]  ${methodType}  ${items}
  ${items_count}=  Get Length  ${items}
  :FOR  ${i}  IN RANGE  ${items_count}
  \     Додати предмет  ${methodType}  ${items[${i}]}  ${i}

Додати предмет
  [Arguments]  ${methodType}  ${item}  ${index}
  ${items_description}=  Get From Dictionary  ${item}                   description
  ${items_descriptionEN}=  Get From Dictionary  ${item}                 description_en
  ${quantity}=           set Variable   ${item.quantity}
  ${unit}=               Get From Dictionary  ${item.unit}              name
  ${cpv}=                Get From Dictionary  ${item.classification}    id
  log  ${item}
  ${dkpp_desc}=          Get From Dictionary  ${item.additionalClassifications[0]}  description
  ${dkpp_id}=            Get From Dictionary  ${item.additionalClassifications[0]}  id
  ${deliveryDateStart}=  Get From Dictionary  ${item.deliveryDate}      startDate
  ${deliveryDateEnd}=    Get From Dictionary  ${item.deliveryDate}      endDate
  ${deliveryDateStart}=  convert_date_to_etender_format  ${deliveryDateStart}
  ${deliveryDateEnd}=    convert_date_to_etender_format  ${deliveryDateEnd}
  ${latitude}=           Get From Dictionary  ${item.deliveryLocation}  latitude
  ${longitude}=          Get From Dictionary  ${item.deliveryLocation}  longitude
  ${region}=             Get From Dictionary  ${item.deliveryAddress}   region
  ${locality}=           Get From Dictionary  ${item.deliveryAddress}   locality
  ${locality}=           convert_common_string_to_etender_string  ${locality}
  ${postalCode}=         Get From Dictionary  ${item.deliveryAddress}   postalCode
  ${streetAddress}=      Get From Dictionary  ${item.deliveryAddress}   streetAddress

  Run Keyword If    '${index}' != '0'  Click Element  id=addLotItem_0
  Wait and Input    id=itemsDescription0${index}      ${items_description}
  Run Keyword If    '${methodType}' == 'aboveThresholdEU'  Wait and Input    id=itemsDescriptionEN0${index}      ${items_descriptionEN}
  Wait and Input    id=itemsQuantity0${index}         ${quantity}
  Wait and Click    xpath=(//div[contains(@ng-model,"unit.selected")]//input[@type="search"])[${index}+1]
  Wait and Input    xpath=(//div[contains(@ng-model,"unit.selected")]//input[@type="search"])[${index}+1]  ${unit}
  Wait and Click    xpath=//div[contains(@class,"selectize-dropdown") and contains(@repeat,"unit")]//div[@role="option" and contains(@class,"active")]

  Wait Scroll Click     id=openClassificationModal0${index}
  Sleep  2
  Wait and Input    id=classificationCode  ${cpv}
  Дочекатись зникнення blockUI
  Wait and Click    xpath=//td[contains(., '${cpv}')]
  Wait and Click    id=classification_choose
  Дочекатись зникнення blockUI

  ${status}  ${value}=  Run Keyword And Ignore Error  Get From Dictionary  ${item}  additionalClassifications
  log to console    Attempt to get 1st additonal classification scheme: ${status}
  Run Keyword If    '${status}' == 'PASS'   Опрацювати дотаткові класифікації  ${item.additionalClassifications}  ${index}
  Wait and Input    id=delStartDate0${index}        ${deliveryDateStart}
  Wait and Input    id=delEndDate0${index}          ${deliveryDateEnd}
  Wait and Select By Label  id=region_0${index}  ${region}
  Run Keyword If  '${region}' != 'місто Київ'  Input text  xpath=//input[@name="otherCity_0${index}"]  ${locality}
  Wait and Input    id=street_0${index}   ${streetAddress}
  Wait and Input    id=postIndex_0${index}    ${postalCode}

Додати неціновий показник на предмет
  [Arguments]  ${username}  ${tender_uaid}  ${feature_data}  ${object_id}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Перейти до редагування тендера
  ${feature_of}=  Get From Dictionary  ${feature_data}  featureOf
  Run Keyword If  '${feature_of}' == 'lot'       add feature  lot     ${feature_data}  1
  Run Keyword If  '${feature_of}' == 'tenderer'  add feature  tender  ${feature_data}  1
  Run Keyword If  '${feature_of}' == 'item'      add feature  item    ${feature_data}  1
  Зберегти зміни в тендері
  Run Keyword And Ignore Error  Click Element  xpath=//div[@id="SignModal" and //div[contains(@class,"modal-dialog")]//div[contains(.,"будь ласка, перевірте статус")]]//button[.="Закрити"]  #close info dialog, if present

Додати неціновий показник на лот
  [Arguments]  ${username}  ${tender_uaid}  ${feature_data}  ${object_id}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Перейти до редагування тендера
  add feature lot     ${feature_data}  1
  Зберегти зміни в тендері
  Run Keyword And Ignore Error  Click Element  xpath=//div[@id="SignModal" and //div[contains(@class,"modal-dialog")]//div[contains(.,"будь ласка, перевірте статус")]]//button[.="Закрити"]  #close info dialog, if present

Видалити неціновий показник
  [Arguments]  ${username}  ${tender_uaid}  ${feature_id}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Перейти до редагування тендера
  Пройти по цінових показниках лотів і видалити за потреби   ${feature_id}
  Пройти по цінових показниках предметів і видалити за потреби  ${feature_id}
  Зберегти зміни в тендері
  Run Keyword And Ignore Error  Click Element  xpath=//div[@id="SignModal" and //div[contains(@class,"modal-dialog")]//div[contains(.,"будь ласка, перевірте статус")]]//button[.="Закрити"]  #close info dialog, if present

Пройти по цінових показниках лотів і видалити за потреби
  [Arguments]  ${feature_id}
  ${features}=  Get WebElements  xpath=//input[contains(@name,"feature-lot") and @ng-model="feature.title"]
  ${features_count}=  Get Length  ${features}
  :FOR  ${i}  IN RANGE  ${features_count}
  \     ${feature_title}=  Get Value  xpath=//input[@name="feature-lot${i}"]
  \     ${contains}=  Evaluate   "${feature_id}" in """${feature_title}"""
  \     ${target_feature_index}=  Run Keyword If  '${contains}' == 'True'  Set Variable  ${i}
  Return From Keyword If  '${target_feature_index}' == 'None'
  Видалити вказаний неціновий показник з лоту  ${target_feature_index}  # delete feature
# TODO merge ↕
Пройти по цінових показниках предметів і видалити за потреби
  [Arguments]  ${feature_id}
  ${features}=  Get WebElements  xpath=//input[contains(@name,"feature-item") and @ng-model="feature.title"]
  ${features_count}=  Get Length  ${features}
  :FOR  ${i}  IN RANGE  ${features_count}
  \     ${feature_title}=  Get Value  name=feature-item${i}
  \     ${contains}=  Evaluate   "${feature_id}" in """${feature_title}"""
  \     ${target_feature_index}=  Run Keyword If  '${contains}' == 'True'  Set Variable  ${i}
  Return From Keyword If  '${target_feature_index}' == 'None'
  Видалити вказаний неціновий показник з предмету  ${target_feature_index}  # delete feature

Видалити вказаний неціновий показник з предмету
  [Arguments]  ${feature_index}
  Wait Scroll Click     xpath//add-features[contains(@feature-sector,"item")]//button[@ng-click="removeFeature($index)"][${feature_index}+1]

Видалити вказаний неціновий показник з лоту
  [Arguments]  ${feature_index}
  Wait Scroll Click     xpath=//add-features[contains(@feature-sector,"lot")]//button[@ng-click="removeFeature($index)"][${feature_index}+1]

Клацнути і дочекатися
  [Arguments]  ${tender_link}
  Click Link  xpath=//a[@ng-click='search()']
  Дочекатись зникнення blockUI
  Wait Until Page Contains Element   ${tender_link}  5

Пошук тендера по ідентифікатору
  [Arguments]  ${username}  ${tender_uaid}  @{ARGUMENTS}
  Reload Page
  Run Keyword If  '${username}' != 'Etender_Owner'  Run Keyword And Return  Тимчасовий Пошук тендера по ідентифікатору для Viewer  ${username}  ${tender_uaid}
  Go To  ${USERS.users['${username}'].homepage}
  Дочекатись зникнення blockUI
  Перейти на вкладку іншого типу процедур за потреби  ${username}
  Wait and Input    ${locator.search_tender}    ${tender_uaid}
  ${tender_link}=   Set Variable    xpath=//td[contains(.,'${tender_uaid}')]//a
  Дочекатись зникнення blockUI
  ${passed}=  Run Keyword And Return Status  Wait Until Keyword Succeeds  120 s  30 s  Клацнути і дочекатися  ${tender_link}
  Run Keyword Unless  ${passed}  Fatal Error  Тендер не знайдено за 30 секунд
  Click Link    ${tender_link}
  #Дочекатись зникнення blockUI
  Wait Until Page Contains    ${tender_uaid}   10
  ${tenderpage}=    Get Location
  Set To Dictionary     ${USERS.users['${username}']}   tenderpage=${tenderpage.split('?')[0]}

Тимчасовий Пошук тендера по ідентифікатору для Viewer
  [Arguments]  ${username}  ${tender_uaid}
  # TODO: У майбутньому треба буде запровадити більш коректне рішення
  # Виникла необхідність обійти пошук по ідентифікатору через особливість тестового оточення майданчика
  Go To  ${USERS.users['${username}'].homepage.split('#')[0]}tender?tenderid=${TENDER_UAID}
  #Дочекатись зникнення blockUI
  Wait Until Page Contains    ${tender_uaid}   10
  ${tenderpage}=    Get Location
  Set To Dictionary     ${USERS.users['${username}']}   tenderpage=${tenderpage.split('?')[0]}

Перейти на сторінку тендера за потреби
  [Arguments]  ${username}  ${tender_uaid}
  ${currentpage}=   Get Location
  ${tenderpage}=    Get From Dictionary     ${USERS.users['${username}']}   tenderpage
  Run Keyword If  '${currentpage}'!='${tenderpage}'  Go To  ${tenderpage}
  Wait Until Page Contains    ${tender_uaid}   10

Перейти на вкладку іншого типу процедур за потреби
  [Arguments]  ${username}
  ${methodType}=  Get From Dictionary  ${USERS.users['${username}']}  method_type
  Return From Keyword If  '${methodType}' != 'negotiation'
  Wait Scroll Click     id=naviTitle1
  Дочекатись зникнення blockUI

Пошук плану по ідентифікатору
  [Arguments]  ${username}  ${TENDER_UAID}
  Log  ${username}
  Go To  ${USERS.users['${username}'].homepage}
  Wait Scroll Click     id=naviTitle2
  Дочекатись зникнення blockUI
  Wait and Input    xpath=//input[@type='text' and @placeholder='Пошук за номером плану']   ${TENDER_UAID}
  Дочекатись зникнення blockUI
  Wait Until Page Contains  ${TENDER_UAID}  10

Завантажити документ в ставку
  [Arguments]  ${username}  ${file}  ${tender_uaid}  ${doc_type}=1
  Перейти на сторінку тендера за потреби    ${username}  ${tender_uaid}
  Відкрити розділ Деталі Закупівлі
  Натиснути редагувати пропозицію
  Run Keyword And Ignore Error  Обрати конфіденційність документа
  ${doc_type}=          get_doc_type_index          ${doc_type}
  Select From List By Index     id=bidDocType_      ${doc_type}
  Завантажити док  ${username}  ${file}  id=addBidDoc_

Обрати конфіденційність документа
  [Arguments]  ${conf}=1
  Select From List By Index     id=bidDocConf_   ${conf}

Змінити документацію в ставці
  [Arguments]  ${username}  ${tender_uaid}  ${privat_doc}  ${doc_id}
  Log  ${privat_doc}
  Sleep     3
  Відкрити розділ Деталі Закупівлі
  Click Element     xpath=//label[@for="showBidDocs00"]
  Sleep     1
  Click Element     id=changeDoc_0
  Sleep     3
  Select From List By Index  id=bidDocConf_    3
  Sleep     1
  Input Text        xpath=//textarea[@ng-model="document.confidentialityRationale"]  ${privat_doc.data.confidentialityRationale}
  Click Element     xpath=//button[@ng-click="updateBidDocument(document, tender, bid)"]
  Sleep     3
  Reload Page

Змінити документ в ставці
  [Arguments]  ${username}  ${tender_uaid}  ${file}  ${doc_id}
  Log  ${doc_id}
  Sleep     3
  Відкрити розділ Деталі Закупівлі
  Click Element     xpath=//label[@for="showBidDocs00"]
  Sleep     1
  Click Element     id=changeDoc_0
  Sleep     3
  Завантажити док  ${username}  ${file}  id=updateBidDoc_0

Завантажити документ в лот
  [Arguments]  ${username}  ${file}  ${tender_uaid}  ${lot_id}
  Wait and Select By Label  xpath=//div[@id="treetree-01-02-0"]//select[@id="docType"]  Інші
  Завантажити док  ${username}  ${file}  id=lot_doc_add

Заповнити нецінові критерії
  [Arguments]  ${features_ids}  ${parameters}
  ${count}=  Get Length  ${features_ids}
  :FOR  ${i}  IN RANGE  ${count}
  \     Run Keyword  Вибрати неціновий критерій  ${features_ids[${i}]}  ${parameters[${i}]['value']}

Вибрати неціновий критерій
  [Arguments]  ${feature_id}  ${value}
  ${index}=  get_feature_index  ${value}
  Select From List By Index  xpath=//span[contains(.,'${feature_id}')]/../..//select  ${index}
  Sleep  1

Пітдвердити чекбокси пропозиції
  Select Checkbox  id=selfEligible
  Select Checkbox  id=selfQualified

Подати цінову пропозицію
  [Arguments]  ${username}  ${tender_uaid}  ${bid_data}  ${lots_ids}  ${features_ids}
  Перейти на сторінку тендера за потреби    ${username}  ${tender_uaid}
  sleep  5
  Відкрити розділ Деталі Закупівлі
  ${amount}=    Run Keyword If  ${lots_ids} is None  Set Variable  ${bid_data.data.value.amount}
  ...           ELSE  Set Variable  ${bid_data.data.lotValues[0].value.amount}
  Input String      id=amount0      ${amount}
  Run Keyword And Ignore Error      Пітдвердити чекбокси пропозиції
  Run Keyword Unless  ${features_ids} is None  Заповнити нецінові критерії  ${features_ids}  ${bid_data.data.parameters}
  Click Element     id=createBid_0
  Дочекатись зникнення blockUI
  sleep  3

Отримати інформацію із пропозиції
  [Arguments]  ${username}  ${tender_uaid}  ${field}
  Перейти на сторінку тендера за потреби    ${username}  ${tender_uaid}  

  Відкрити розділ Деталі Закупівлі
  Run Keyword And Return If  'value' in '${field}'  Отримати інформацію про value пропозиції
  Run Keyword And Return  Отримати інформацію про ${field} пропозиції

Отримати інформацію про value пропозиції
  ${value}=     Get Text        id=bidAmount0
  ${value}=     parse_currency_value_with_spaces    ${value}
  Run Keyword And Return  Convert To Number  ${value}

Отримати інформацію про status пропозиції
  ${value}=     Get Text        id=bidStatus0
  Run Keyword And Return  convert_etender_string_to_common_string  ${value}

Змінити цінову пропозицію
  [Arguments]  ${username}  ${tender_uaid}  ${field}  ${value}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Sleep    5
  Run Keyword If  '${field}'=='status'  Підтвердити пропозицію
  Run Keyword If  'value' in '${field}'  Редагувати суму пропозиції  ${value}
  Дочекатись зникнення blockUI

Редагувати суму пропозиції
  [Arguments]  ${value}
  Натиснути редагувати пропозицію
  Input String      id=amount0       ${value}
  Click Element     id=updateBid_0

Підтвердити пропозицію
  Click Element     id=confirmBid_0

Натиснути редагувати пропозицію
  Click Element     id=editBid_0

Скасувати цінову пропозицію
  [Arguments]  ${username}  ${TENDER_UAID}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Wait and Click    xpath=//button[contains(@class, 'btn-sm btn-danger')]
  sleep  5

Оновити сторінку з тендером
  [Arguments]  ${username}  ${TENDER_UAID}
  Reload Page

Оновити сторінку з планом
  [Arguments]  @{ARGUMENTS}
  Reload Page

Створити вимогу про виправлення умов лоту
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${lot_id}  ${file}
  Run Keyword And Return  Створити вимогу про виправлення умов  ${username}  ${tender_uaid}  ${claim}  ${lot_id}  ${file}

Створити вимогу про виправлення умов закупівлі
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${file}
  Run Keyword And Return  Створити вимогу про виправлення умов  ${username}  ${tender_uaid}  ${claim}  тендер  ${file}

Створити вимогу про виправлення визначення переможця
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${award_index}  ${file}
  Run Keyword And Return  Створити вимогу про виправлення умов  ${username}  ${tender_uaid}  ${claim}  award  ${file}  ${award_index}

Створити вимогу про виправлення умов
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${target}  ${file}  ${award_index}=0
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  ${complaintID}=  Створити чернетку вимоги  ${username}  ${tender_uaid}  ${claim}  ${target}  ${award_index}
  Завантажити док  ${username}  ${file} id=addClaimDoc
  Відкрити розділ вимог і скарг
  Click Element     xpath=//button[contains(.,'Опублікувати вимогу')]
  [Return]  ${complaintID}

Створити чернетку вимоги
  [Arguments]  ${username}  ${tender_uaid}  ${claim}  ${target}  ${award_index}=-1
  Відкрити розділ вимог і скарг
  Wait Scroll Click     id=addClaim
  Wait and Input        id=title            ${claim.data.title}
  Input Text            id=description      ${claim.data.description}
  ${award_index}=   Evaluate            ${award_index}+${1}
  ${award_index}=   Convert To String   ${award_index}
  Run Keyword If        '${target}'=='award'    Select From List By Index             id=complaintFor  ${award_index}
  Run Keyword Unless    '${target}'=='award'    Select From List By Partial Label     id=complaintFor  ${target}
  Click Element     id=btnAddComplaint
  Sleep  10
  Дочекатись зникнення blockUI
  Run Keyword And Return  Get text  xpath=//complaint[contains(.,"${claim.data.description}")]//div[@id='complaintid']

Створити чернетку вимоги про виправлення умов лоту
  [Arguments]  ${username}  ${tender_uaid}   ${claim}  ${target}
  Run Keyword And Return  Створити чернетку вимоги  ${username}  ${tender_uaid}   ${claim}  ${target}

Створити чернетку вимоги про виправлення умов закупівлі
  [Arguments]  ${username}  ${tender_uaid}   ${claim}
  Run Keyword And Return  Створити чернетку вимоги  ${username}  ${tender_uaid}   ${claim}  тендер

Створити чернетку вимоги про виправлення визначення переможця
  [Arguments]  ${username}  ${tender_uaid}   ${claim}  ${award_index}
  Run Keyword And Return  Створити чернетку вимоги  ${username}  ${tender_uaid}   ${claim}  award  ${award_index}

Скасувати вимогу
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${cancellation_data}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Відкрити розділ вимог і скарг
  Click Element  xpath=//div[@id='${complaintID}']//*[@name='CancelComplaint']
  Wait and Input    id=cancellationReason      ${cancellation_data.data.cancellationReason}
  Click Element     id=btnCancelComplaint
  Sleep  5

Скасувати вимогу про виправлення умов закупівлі
  [Arguments]  @{arguments}
  Скасувати вимогу  @{arguments}

Скасувати вимогу про виправлення умов лоту
  [Arguments]  @{arguments}
  Скасувати вимогу  @{arguments}

Скасувати вимогу про виправлення визначення переможця
  [Arguments]  @{arguments}
  #last is award_index which is not needed
  Скасувати вимогу  @{arguments[:-1]}

Select From List By Partial Label
  [Arguments]  ${locator}  ${label}
  [Documentation]  If more than one option is given for a single-selection list, the first value will be selected.
  ${targets_list}=  Get List Items      ${locator}
  ${label}=        Get Matches         ${targets_list}     regexp=.*${label}.*
  Select From List By Label     ${locator}     ${label[0]}

Отримати інформацію із документа до скарги
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${doc_id}  ${field}
  ${raw_value}=  Get Text  xpath=//a[contains(.,'${doc_id}')]
  [Return]  ${raw_value.split(', ')[-1]}

Отримати інформацію із скарги
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${field}  ${award_index}
  Відкрити розділ вимог і скарг
  ${status}=  Run Keyword And Return Status  Розкрити інформацію про скаргу  ${complaintID}
  Run Keyword If  '${status}'=='FAIL'  Run Keywords  Reload Page  AND  Відкрити розділ вимог і скарг  AND  Розкрити інформацію про скаргу  ${complaintID}
  Run Keyword And Return  Отримати інформацію із скарги про ${field}  ${complaintID}

Розкрити інформацію про скаргу
  [Arguments]  ${complaintID}
  ${is_expanded}=  Get Element Attribute  xpath=//div[@id='${complaintID}']/div@aria-selected
  Run Keyword If  '${is_expanded}'=='false'  Click Element  xpath=//div[@id='${complaintID}']//a

Отримати інформацію із скарги про title
  [Arguments]  ${complaintID}
  Run Keyword And Return  Get Element Attribute  xpath=//div[@id='${complaintID}']//*[@name='title']@title

Отримати інформацію із скарги про description
  [Arguments]  ${complaintID}
  Run Keyword And Return  Get Text  xpath=//div[@id='${complaintID}']//*[@name='description']

Отримати інформацію із скарги про resolutionType
  [Arguments]  ${complaintID}
  Wait Until Keyword Succeeds  10 x  5  Check Is Element Loaded  xpath=//div[@id='${complaintID}']//*[@name='resolutionType']
  ${resolutionType}=      Get Text  xpath=//div[@id='${complaintID}']//*[@name='resolutionType']
  Run Keyword And Return  convert_etender_string_to_common_string  ${resolutionType.lower()}

Отримати інформацію із скарги про resolution
  [Arguments]  ${complaintID}
  Run Keyword And Return  Get Text  xpath=//div[@id='${complaintID}']//*[@name='resolution']

Отримати інформацію із скарги про satisfied
  [Arguments]  ${complaintID}
  Wait Until Keyword Succeeds  10 x  5  Check Is Element Loaded  xpath=//div[@id='${complaintID}']//*[@name='satisfied']
  ${satisfied}=  Get Text  xpath=//div[@id='${complaintID}']//*[@name='satisfied']
  ${satisfied}=  Set Variable  ${satisfied.replace(u'Так', u'True')}
  ${satisfied}=  Set Variable  ${satisfied.replace(u'Ні', u'False')}
  Run Keyword And Return  Convert To Boolean  ${satisfied}

Отримати інформацію із скарги про status
  [Arguments]  ${complaintID}
  Reload Page
  Відкрити розділ вимог і скарг
  ${status}=  Get Text  xpath=//div[@id='${complaintID}']//*[@name='status']
  Run Keyword And Return  convert_etender_string_to_common_string  ${status.lower()}

Отримати інформацію із скарги про cancellationReason
  [Arguments]  ${complaintID}
  Wait Until Keyword Succeeds  10 x  5  Check Is Element Loaded  xpath=//div[@id='${complaintID}']//*[@name='cancellationReason']
  Run Keyword And Return  Get Text  xpath=//div[@id='${complaintID}']//*[@name='cancellationReason']

Підтвердити вирішення вимоги про виправлення умов закупівлі
  [Arguments]  @{arguments}
  Підтвердити вирішення вимоги про виправлення умов  @{arguments}

Підтвердити вирішення вимоги про виправлення умов лоту
  [Arguments]  @{arguments}
  Підтвердити вирішення вимоги про виправлення умов  @{arguments}

Підтвердити вирішення вимоги про виправлення визначення переможця
  [Arguments]  @{arguments}
  Підтвердити вирішення вимоги про виправлення умов  @{arguments[:-1]}

Підтвердити вирішення вимоги про виправлення умов
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${data}
  Reload Page
  Відкрити розділ вимог і скарг
  ${satisfied}=  Get From Dictionary  ${data}  data
  ${satisfied}=  Get From Dictionary  ${satisfied}  satisfied
  ${satisfied}=  Convert To String    ${satisfied}
  Click Element  xpath=//div[@id='${complaintID}']//button[contains(@click-and-disable,'${satisfied.lower()}')]

Відповісти на запитання
  [Arguments]  ${username}  ${tender_uaid}  ${answer_data}  ${question_id}
  ${answer}=     Get From Dictionary  ${answer_data.data}  answer
  Reload Page
  Відкрити розділ запитань
  Wait Scroll Click     id=addAnswer_0
  Wait and Input        xpath=//*[@id="questionContainer"]/form/div/textarea            ${answer}
  Wait Scroll Click     xpath=//*[@id="questionContainer"]/form/div/span/button[1]
  Sleep  5

Відкрити розділ запитань
  Wait Scroll Click     xpath=//li[@id="naviTitle1"]/span
  Дочекатись зникнення blockUI

scrollIntoView by script
  [Arguments]  ${locator}
  [Documentation]  use xpath or id
  ${locator}=       prepare_locator_to_scroll   ${locator}  # convert id to xpath and cut xpath=
  Execute JavaScript  document.evaluate('${locator}', document.documentElement, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).scrollIntoView();
  JavaScript scrollBy  0  -100

JavaScript scrollBy
  [Arguments]  ${x_offset}  ${y_offset}
  Execute JavaScript  window.scrollBy(${x_offset}, ${y_offset})

Input String
  [Arguments]  ${locator}  ${value}
  [Documentation]  Converts value to string and inputs to locator field
  ${value}=     Convert To String       ${value}
  Input text    ${locator}              ${value}

Check Is Element Loaded
  [Arguments]  ${locator}
  ${text_value}=   Get Text  ${locator}
  Log  ${text_value}
  Should Not Be Empty  ${text_value}
  Should Not Be Equal  ${text_value}  -

Внести зміни в тендер
  [Arguments]  ${username}  ${tender_uaid}  ${field}  ${new_value}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Перейти до редагування тендера
  Редагувати поле тендера  ${field}  ${new_value}
  Зберегти зміни в тендері

Редагувати поле тендера
  [Arguments]  ${field}  ${new_value}
  Run Keyword And Return  Редагувати поле ${field}  ${new_value}

Редагувати поле tenderPeriod.endDate
  [Arguments]  ${new_value_isodate}
  ${date}=  convert_date_to_etender_format  ${new_value_isodate}
  Input text  id=TenderPeriod  ${date}
  ${time}=  convert_time_to_etender_format  ${new_value_isodate}
  Input text  id=TenderPeriod_time  ${time}

Редагувати поле description
  [Arguments]  ${new_value}
  Input text  id=description  ${new_value}

Змінити лот
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${field}  ${new_value}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Перейти до редагування тендера
  Run Keyword  Редагувати поле лота ${field}  ${lot_id}  ${new_value}
  Зберегти зміни в тендері

Зберегти зміни в тендері
  Wait Scroll Click     id=SaveChanges
  Run Keyword And Ignore Error  Wait Scroll Click  xpath=//div[@id="SignModal" and //div[contains(@class,"modal-dialog")]//div[contains(.,"будь ласка, перевірте статус")]]//button[.="Закрити"]  #close info dialog, if present
  Дочекатись зникнення blockUI

Перейти до редагування тендера
  Wait Scroll Click     xpath=//a[contains(@class,'btn btn-primary') and .='Редагувати закупівлю']
  Дочекатись зникнення blockUI

Редагувати поле лота value.amount
  [Arguments]  ${lot_id}  ${new_value}
  ${new_value}=  float_to_string_2f  ${new_value}  # at least 2 fractional point precision, avoid rounding
  Input text  id=lotValue_0  ${new_value}

Редагувати поле лота minimalStep.amount
  [Arguments]  ${lot_id}  ${new_value}
  ${new_value}=  float_to_string_2f  ${new_value}  # at least 2 fractional point precision, avoid rounding
  Input text  id=minimalStep_0  ${new_value}

Редагувати поле лота description
  [Arguments]  ${lot_id}  ${new_value}
  Input text  id=lotDescription_0  ${new_value}

Отримати документ до лоту
  [Arguments]  ${username}  ${tender_uaid}  ${lot_id}  ${doc_id}
  Відкрити розділ Деталі Закупівлі
  Click Element     id=openAllLots
  Run Keyword And Return  etender.Отримати документ  ${username}  ${tender_uaid}  ${doc_id}

Отримати інформацію про status
  Reload Page
  Дочекатись зникнення blockUI
  ${return_value}=   Отримати текст із поля і показати на сторінці   status
  ${return_value}=   convert_etender_string_to_common_string  ${return_value.lower()}
  [Return]  ${return_value}

Отримати інформацію із тендера
  [Arguments]  ${username}  ${tender_uaid}  ${field}
  # TODO: It would be good to create a "smart" search, to perform search only if incorrect page opened or if page was opened too long ago
  Run keyword if  '${field}' == 'awards[0].complaintPeriod.endDate'  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Run Keyword And Return  Отримати інформацію про ${field}

Отримати текст із поля і показати на сторінці
  [Arguments]   ${fieldname}
  Wait Until Element Is Visible    ${locator.${fieldname}}    30
  ${return_value}=   Get Text  ${locator.${fieldname}}
  [return]  ${return_value}

Отримати інформацію про title
  ${return_value}=   Отримати текст із поля і показати на сторінці   title
  [return]  ${return_value}

Отримати інформацію про qualificationPeriod.endDate
  Reload Page
  ${datetime}=      Отримати текст із поля і показати на сторінці  qualificationPeriod.endDate
  Run Keyword And Return  convert_etender_date_to_iso_format  ${datetime}

Отримати інформацію про qualifications[0].status
  Reload Page
  Відкрити розділ Деталі Закупівлі
  ${return_value}=  Отримати текст із поля і показати на сторінці  qualifications[0].status
  ${return_value}=  convert_etender_string_to_common_string  ${return_value}
  [return]  ${return_value}

Отримати інформацію про qualifications[1].status
  Reload Page
  Відкрити розділ Деталі Закупівлі
  ${return_value}=  Отримати текст із поля і показати на сторінці  qualifications[1].status
  ${return_value}=  convert_etender_string_to_common_string  ${return_value}
  [return]  ${return_value}

Отримати інформацію про description
  ${return_value}=   Отримати текст із поля і показати на сторінці   description
  [return]  ${return_value}

Отримати інформацію про minimalStep.amount
  ${return_value}=   Отримати текст із поля і показати на сторінці   minimalStep.amount
  ${return_value}=   parse_currency_value_with_spaces   ${return_value}
  ${return_value}=   Convert To Number   ${return_value}
  [return]  ${return_value}

Отримати інформацію про value.amount
  ${return_value}=   Отримати текст із поля і показати на сторінці  value.amount
  ${return_value}=   Set Variable  ${return_value.replace(u'\xa0','')}  # nbsp converting attempt
  ${return_value}=   Set Variable  ${return_value.replace(' ','')}
  ${return_value}=   Convert To Number   ${return_value.replace(',','.')}
  [return]  ${return_value}

Отримати інформацію про items[0].deliveryLocation.latitude
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].deliveryLocation.latitude
  ${return_value}=   string_to_float   ${return_value}
  [return]  ${return_value}

Отримати інформацію про items[0].deliveryLocation.longitude
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].deliveryLocation.longitude
  ${return_value}=   string_to_float   ${return_value}
  [return]  ${return_value}

Отримати інформацію про value.currency
  ${return_value}=   Отримати текст із поля і показати на сторінці   value.currency
  [return]  ${return_value}

Отримати інформацію про value.valueAddedTaxIncluded
  ${return_value}=   Отримати текст із поля і показати на сторінці   value.valueAddedTaxIncluded
  ${return_value}=  Run Keyword If  'ПДВ' in '${return_value}'  Set Variable  True
    ...  ELSE  Set Variable  False
  Run Keyword And Return  Convert To Boolean   ${return_value}

Отримати інформацію про causeDescription
  ${return_value}=  Отримати текст із поля і показати на сторінці  causeDescription
  [return]  ${return_value}

Отримати інформацію про cause
  ${return_value}=  Отримати текст із поля і показати на сторінці  cause
  ${return_value}=  convert_etender_string_to_common_string  ${return_value}
  [return]  ${return_value}

Отримати інформацію про contracts[0].status
  Reload Page
  Відкрити розділ Деталі Закупівлі
  ${return_value}=  Отримати текст із поля і показати на сторінці  contracts[0].status
  ${return_value}=  Set Variable  ${return_value.strip()}
  ${return_value}=  convert_etender_string_to_common_string  ${return_value}
  [return]  ${return_value}

Отримати інформацію про items[0].unit.name
  ${return_value}=   Отримати текст із поля і показати на сторінці   items[0].unit.name
  ${return_value}=   convert_etender_string_to_common_string   ${return_value}
  [return]  ${return_value}

Відмітити на сторінці поле з тендера
  [Arguments]   ${fieldname}  ${locator}
  ${last_note_id}=  Add pointy note   ${locator}   Found ${fieldname}   width=200  position=bottom
  Align elements horizontally    ${locator}   ${last_note_id}
  sleep  1
  Remove element   ${last_note_id}

Отримати інформацію про tenderId
  ${return_value}=   Отримати текст із поля і показати на сторінці   tenderId
  [return]  ${return_value}

Отримати інформацію про procuringEntity.name
  ${return_value}=   Отримати текст із поля і показати на сторінці   procuringEntity.name
  [return]  ${return_value}

Отримати інформацію про procuringEntity.address.countryName
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.address.countryName
  ${return_value}=  Set Variable   ${return_value[:-1]}
  [return]  ${return_value}

Отримати інформацію про procuringEntity.address.locality
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.address.locality
  ${return_value}=  Set Variable   ${return_value[:-1]}
  [return]  ${return_value}

Отримати інформацію про procuringEntity.address.postalCode
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.address.postalCode
  ${return_value}=  Set Variable   ${return_value[:-1]}
  [return]  ${return_value}

Отримати інформацію про procuringEntity.address.region
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.address.region
  ${return_value}=  Set Variable   ${return_value[:-1]}
  [return]  ${return_value}

Отримати інформацію про procuringEntity.address.streetAddress
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.address.streetAddress
  [return]  ${return_value}

Отримати інформацію про procuringEntity.contactPoint.name
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.contactPoint.name
  [return]  ${return_value}

Отримати інформацію про procuringEntity.contactPoint.telephone
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.contactPoint.telephone
  [return]  ${return_value}

Отримати інформацію про procuringEntity.contactPoint.url
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.contactPoint.url
  [return]  ${return_value}

Отримати інформацію про procuringEntity.identifier.legalName
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.identifier.legalName
  [return]  ${return_value}

Отримати інформацію про procuringEntity.identifier.scheme
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.identifier.scheme
  ${return_value}=  Set Variable   ${return_value[:-1]}
  ${return_value}=  Set Variable   ${return_value.replace(u"Код ","")}
  ${return_value}=  Set Variable   ${return_value.replace(u"ЄДРПОУ","UA-EDR")}
  [return]  ${return_value}

Отримати інформацію про procuringEntity.identifier.id
  ${return_value}=  Отримати текст із поля і показати на сторінці   procuringEntity.identifier.id
  [return]  ${return_value}

Отримати інформацію про tenderPeriod.startDate
  ${return_value}=   Отримати текст із поля і показати на сторінці  tenderPeriod.startDate
  ${return_value}=   Set Variable  ${return_value.replace(u'з ','')}
  ${return_value}=   convert_etender_date_to_iso_format   ${return_value}
  [return]  ${return_value}

Отримати інформацію про tenderPeriod.endDate
  ${return_value}=   Отримати текст із поля і показати на сторінці  tenderPeriod.endDate
  ${return_value}=   Set Variable  ${return_value.replace(u'по ','')}
  ${return_value}=   convert_etender_date_to_iso_format   ${return_value}
  [return]  ${return_value}

Отримати інформацію про enquiryPeriod.startDate
  ${return_value}=   Отримати текст із поля і показати на сторінці  enquiryPeriod.startDate
  ${return_value}=   Set Variable  ${return_value.replace(u'з ','')}
  ${return_value}=   convert_etender_date_to_iso_format   ${return_value}
  [return]  ${return_value}

Отримати інформацію про enquiryPeriod.endDate
  ${return_value}=   Отримати текст із поля і показати на сторінці  enquiryPeriod.endDate
  ${return_value}=   Set Variable  ${return_value.replace(u'по ','')}
  ${return_value}=   convert_etender_date_to_iso_format   ${return_value}
  [return]  ${return_value}

Отримати інформацію про items[0].description
  Відкрити розділ Деталі Закупівлі
  ${return_value}=   Отримати текст із поля і показати на сторінці   items[0].description
  [return]  ${return_value}

Отримати інформацію про items[0].unit.code
  ${return_value}=   Отримати текст із поля і показати на сторінці   items[0].unit.code
  ${return_value}=   convert_unit_name_to_unit_code  ${return_value}
  [return]  ${return_value}

Отримати інформацію про items[0].quantity
  ${return_value}=   Отримати текст із поля і показати на сторінці   items[0].quantity
  ${return_value}=   Convert To Number   ${return_value}
  [return]  ${return_value}

Отримати інформацію про items[0].classification.id
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].classification.id
  [return]  ${return_value}

Отримати інформацію про items[0].classification.scheme
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].classification.scheme
  ${return_value}=   Set Variable  ${return_value.split(u'КЛАСИФІКАТОР ')[1]}
  ${return_value}=   Set Variable  ${return_value.split(':')[0]}
  ${return_value}=   Set Variable  ${return_value.replace(' ', '')}
  [return]  ${return_value}

Отримати інформацію про items[0].classification.description
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].classification.description
  Run Keyword And Return  convert_etender_string_to_common_string  ${return_value}

Отримати інформацію про items[0].additionalClassifications[0].id
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].additionalClassifications[0].id
  [return]  ${return_value.split(' ')[0]}

Отримати інформацію про items[0].additionalClassifications[0].scheme
  ${return_value}=   Отримати текст із поля і показати на сторінці  items[0].additionalClassifications[0].scheme
  [return]  ${return_value}

Отримати інформацію про items[0].additionalClassifications[0].description
  Run Keyword And Return    Отримати текст із поля і показати на сторінці  items[0].additionalClassifications[0].description

Отримати інформацію про items[0].deliveryAddress.postalCode
  ${return_value}=  Отримати текст із поля і показати на сторінці  items[0].deliveryAddress.postalCode
  Run Keyword And Return  Get Substring  ${return_value}  0  5

Отримати інформацію про items[0].deliveryAddress.countryName
  ${return_value}=  Отримати текст із поля і показати на сторінці  items[0].deliveryAddress.countryName
  Run Keyword And Return  Get Substring  ${return_value}  0  7

Отримати інформацію про items[0].deliveryAddress.region
  ${return_value}=  Отримати текст із поля і показати на сторінці  items[0].deliveryAddress.region
  Run Keyword And Return    convert_etender_string_to_common_string     ${return_value}

Отримати інформацію про items[0].deliveryAddress.locality
  ${return_value}=  Отримати текст із поля і показати на сторінці  items[0].deliveryAddress.locality
  ${return_value}=   Remove String      ${return_value}     ,
  Run Keyword And Return    convert_etender_string_to_common_string     ${return_value}

Отримати інформацію про items[0].deliveryAddress.streetAddress
  Run Keyword And Return  Отримати текст із поля і показати на сторінці  items[0].deliveryAddress.streetAddress

Отримати інформацію про items[0].deliveryDate.startDate
  ${return_value}=  Отримати текст із поля і показати на сторінці  items[0].deliveryDate.startDate
  ${return_value}=   Set Variable  ${return_value.replace(u'з ','')}
  Run Keyword And Return    convert_etender_date_to_iso_format   ${return_value}, 00:00

Отримати інформацію про items[0].deliveryDate.endDate
  ${return_value}=  Отримати текст із поля і показати на сторінці  items[0].deliveryDate.endDate
  ${return_value}=   Set Variable  ${return_value.replace(u'по ','')}
  Run Keyword And Return    convert_etender_date_to_iso_format   ${return_value}, 00:00

Отримати інформацію про questions[${i}].title
  ${locator}=  Set Variable  id=quest_title_${i}
  Відкрити розділ запитань
  Wait Until Element Is Visible         ${locator}    30
  Run Keyword And Return   Get Text     ${locator}

Отримати інформацію про questions[${i}].description
  ${locator}=  Set Variable  id=quest_descr_${i}
  Відкрити розділ запитань
  Wait Until Element Is Visible         ${locator}    30
  Run Keyword And Return   Get Text     ${locator}

Отримати інформацію про questions[0].date
  Run Keyword And Return   Отримати текст із поля і показати на сторінці   questions[0].date

Отримати інформацію про questions[${i}].answer
  Reload Page
  ${locator}=  Set Variable  id=question_answer_${i}
  Відкрити розділ запитань
  Wait Until Element Is Visible         ${locator}    30
  Run Keyword And Return   Get Text     ${locator}

Отримати інформацію про awards[0].complaintPeriod.endDate
  Відкрити розділ Деталі Закупівлі
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].complaintPeriod.endDate
  ${return_value}=  Set Variable  ${return_value.replace(u'по ','')}
  Run Keyword And Return     convert_etender_date_to_iso_format_and_add_timezone   ${return_value}

Отримати інформацію про awards[0].status
  Відкрити розділ Деталі Закупівлі
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].status
  ${return_value}=  Set Variable  ${return_value.strip()}
  Run Keyword And Return    convert_etender_string_to_common_string   ${return_value}

Отримати інформацію про awards[0].suppliers[0].address.countryName
  Відкрити розділ Деталі Закупівлі
  Mouse Over  xpath=//span[@id="awardContactPoint"]
  Run Keyword And Return    Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].address.countryName

Отримати інформацію про awards[0].suppliers[0].address.locality
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].address.locality
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].address.postalCode
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].address.postalCode
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].address.region
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].address.region
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].address.streetAddress
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].address.streetAddress
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].name
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].name
  [return]  ${return_value}

Отримати інформацію про awards[0].value.valueAddedTaxIncluded
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].value.valueAddedTaxIncluded
  ${return_value}=  Set Variable  ${return_value.strip()}
  Run Keyword And Return    convert_etender_string_to_common_string     ${return_value}

Отримати інформацію про awards[0].value.currency
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].value.currency
  # process values like this:   "   9 254,00 UAH, включаючи ПДВ  "
  ${return_value}=  Set Variable  ${return_value.strip()}
  ${return_value}=  Set Variable  ${return_value.split(',')[1]}
  ${return_value}=  Set Variable  ${return_value.split(' ')[1]}
  [return]  ${return_value}

Отримати інформацію про awards[0].value.amount
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].value.amount
  # process values like this  "   9 254,00 UAH, включаючи ПДВ  "
  ${return_value}=  Set Variable  ${return_value.strip()}
  ${part_one}=  Set Variable  ${return_value.split(',')[0]}
  ${part_two}=  Set Variable  ${return_value.split(',')[1]} # get fractional part with currency
  ${part_two}=  Set Variable  ${part_two.split(' ')[0]}  # remove currency and leave fractional part only
  ${part_one}=  Set Variable  ${part_one.replace(u'\xa0','')}
  ${part_one}=  Set Variable  ${part_one.replace(' ','')}
  ${return_value}=  Set Variable  ${part_one}.${part_two}
  ${return_value}=  Convert To Number  ${return_value}
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].contactPoint.telephone
  Відкрити розділ Деталі Закупівлі
  Mouse Over  xpath=//span[@id="awardContactPoint"]
  Sleep  1
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].contactPoint.telephone
  ${return_value}=  Set Variable  ${return_value.replace(u'Телефон: ','')}
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].contactPoint.name
  Mouse Over  xpath=//li[@id="naviTitle0"]/span   # just to move cursor away
  Sleep  1
  Mouse Over  xpath=//span[@id="awardContactPoint"]
  Sleep  1
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].contactPoint.name
  ${return_value}=  Set Variable  ${return_value.replace(u'Контактна особа: ','')}
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].contactPoint.email
  Mouse Over  xpath=//span[@id="awardContactPoint"]
  Sleep  1
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].contactPoint.email
  ${return_value}=  Set Variable  ${return_value.replace(u'email: ','')}
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].identifier.scheme
  Mouse Over  xpath=//span[@id="awardContactPoint"]
  Sleep  1
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].identifier.scheme
  ${return_value}=  Set Variable  ${return_value.replace(u'Код ','')}
  ${return_value}=  Set Variable  ${return_value.split(':')[0]}
  ${return_value}=  Set Variable  ${return_value.replace(u"ЄДРПОУ","UA-EDR")}
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].identifier.legalName
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].identifier.legalName
  [return]  ${return_value}

Отримати інформацію про awards[0].suppliers[0].identifier.id
  ${return_value}=  Отримати текст із поля і показати на сторінці     awards[0].suppliers[0].identifier.id
  ${return_value}=  Set Variable  ${return_value.split(':')[1]}
  ${return_value}=  Set Variable  ${return_value.strip()}
  [return]  ${return_value}

Отримати інформацію про documents[0].title
  Відкрити розділ Деталі Закупівлі
  Run Keyword And Return  Get Text  xpath=//td[contains(@class,"doc-name")]//a

Отримати інформацію про awards[0].documents[0].title
  Відкрити розділ Деталі Закупівлі
  Wait and Click    xpath=//label[@for="showAwards00"]
  Run Keyword And Return  Get Text  xpath=//awards-info//td[contains(@class,"doc-name")]//a

Отримати посилання на аукціон для глядача
  [Arguments]  ${username}  ${tender_uaid}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Sleep  60
  Page Should Contain Element  xpath=//a[contains(.,"Подивитись процедуру проведення аукціону")]
  Sleep  3
  Run Keyword And Return  Get Element Attribute  xpath=//a[contains(.,"Подивитись процедуру проведення аукціону")]@href

Отримати посилання на аукціон для учасника
  [Arguments]  @{ARGUMENTS}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Відкрити розділ Деталі Закупівлі
  Page Should Contain Element  xpath=//a[@id='participationUrl_0']
  Sleep  3
  Run Keyword And Return  Get Element Attribute  xpath=//*[@id="participationUrl_0"]@href

Отримати інформацію про auctionPeriod.startDate
  ${date}=  Get Text  id=auctionStartDate
  Run Keyword And Return  convert_etender_date_to_iso_format_and_add_timezone  ${date}

Отримати інформацію про auctionPeriod.endDate
  ${date}=  Get Text  id=auctionEndDate
  Run Keyword And Return  convert_etender_date_to_iso_format_and_add_timezone  ${date}

Отримати інформацію із предмету
  [Arguments]    ${user}    ${tender_uaid}    ${item_id}    ${fieldname}
  # TODO: remove old-style keywords and locators, like Отримати інформацію про items[0].classification.description
  Reload Page
  ${prepared_locator}=  Set Variable  ${locator_item_${field_name}}
  ${prepared_locator}=  Set Variable  ${prepared_locator.replace('XX_item_id_XX','${item_id}')}
  log  ${prepared_locator}
  ${fields_supported}=  Create List  classification.scheme  classification.id  classification.description  additionalClassifications[0].id  additionalClassifications[0].description  quantity  unit.name  unit.code  deliveryDate.endDate  deliveryAddress.countryName  deliveryAddress.postalCode  deliveryAddress.region  deliveryAddress.locality  deliveryAddress.streetAddress
#  Відкрити розділ Деталі Закупівлі
  Дочекатись зникнення blockUI
  Run Keyword And Return If  '${fieldname}' not in ${fields_supported}   Отримати інформацію із предмету про ${fieldname}   ${item_id}
  Wait Until Page Contains Element  ${prepared_locator}  10
  Wait Until Keyword Succeeds  10 x  5  Check Is Element Loaded  ${prepared_locator}
  ${raw_value}=   Get Text  ${prepared_locator}
  #List Should Contain Value  ${fields_supported}  ${fieldname}
  Run Keyword And Return  Конвертувати інформацію із предмету про ${fieldname}  ${raw_value}

Отримати інформацію із предмету про description
  [Arguments]  ${item_id}
  Wait Scroll Click     id=openAllLots
  ${locator}=   Set Variable    xpath=//tender-subject-info[@lot="lot"][.//p[contains(.,'${item_id}')]]//div[contains(.,'Позиції')]
  Wait Until Element Is Visible     ${locator}
  ${expanded}=  Get Element Attribute       ${locator}@aria-expanded
  Run Keyword Unless  '${expanded}'=='true'     Click Element     ${locator}
  Sleep  10
  Run Keyword And Return  Get Text  xpath=//p[contains(.,'${item_id}')]

Конвертувати інформацію із предмету про description
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Конвертувати інформацію із предмету про classification.scheme
  [Arguments]  ${raw_value}
  ${raw_value}=      Set Variable  ${raw_value.split(u'КЛАСИФІКАТОР ')[1]}
  ${raw_value}=      Set Variable  ${raw_value.split(':')[0]}
  ${return_value}=   Set Variable  ${raw_value.replace(' ', '')}
  [return]  ${return_value}

Конвертувати інформацію із предмету про classification.id
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Конвертувати інформацію із предмету про classification.description
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Конвертувати інформацію із предмету про quantity
  [Arguments]  ${raw_value}
  ${return_value}=  Convert To Number  ${raw_value}
  [return]  ${return_value}

Конвертувати інформацію із предмету про unit.name
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Конвертувати інформацію із предмету про unit.code
  [Arguments]  ${raw_value}
  ${return_value}=  convert_unit_name_to_unit_code  ${raw_value}
  [return]  ${return_value}

Конвертувати інформацію із предмету про deliveryDate.endDate
  [Arguments]  ${raw_value}
  ${raw_value}=   Set Variable  ${raw_value.replace(u'по ','')}
  ${return_value}=  convert_etender_date_to_iso_format   ${raw_value}, 00:00
  [return]  ${return_value}

Конвертувати інформацію із предмету про deliveryAddress.countryName
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Конвертувати інформацію із предмету про deliveryAddress.postalCode
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Конвертувати інформацію із предмету про deliveryAddress.region
  [Arguments]  ${raw_value}
  ${return_value}=    convert_etender_string_to_common_string     ${raw_value}
  [return]  ${return_value}

Конвертувати інформацію із предмету про deliveryAddress.locality
  [Arguments]  ${raw_value}
  ${return_value}=   Remove String      ${raw_value}     ,
  ${return_value}=    convert_etender_string_to_common_string     ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із предмету про deliveryAddress.streetAddress
  [Arguments]  ${raw_value}
  [return]  ${raw_value}

Отримати інформацію із запитання
  [Arguments]  ${username}  ${tender_uaid}  ${question_id}  ${field}
  Reload Page
  Дочекатись зникнення blockUI
  ${question_locator}=  Set Variable  xpath=//div[@id="questionBlock" and contains(.,"${question_id}")]
  log  ${question_locator}
  Відкрити розділ запитань
  Wait Until Element Is Visible  ${question_locator}  10
  Run Keyword And Return   Get Text  ${question_locator}//*[@id="question_${field}"]

Конвертувати інформацію із запитання про title
  [Arguments]  ${return_value}
  [return]  ${return_value}

Отримати інформацію із документа
  [Arguments]  ${username}  ${tender_uaid}  ${doc_id}  ${field}
  ${prepared_locator}=  Set Variable  ${locator_document_${field}.replace('XX_doc_id_XX','${doc_id}')}
  log  ${prepared_locator}
  Wait Until Page Contains Element  ${prepared_locator}  10
  ${raw_value}=   Get Text  ${prepared_locator}
  Run Keyword And Return  Конвертувати інформацію із документа про ${field}  ${raw_value}

Конвертувати інформацію із документа про title
  [Arguments]  ${raw_value}
  ${return_value}=  Set Variable  ${raw_value.split(',')[0]}
  [return]  ${return_value}

Конвертувати інформацію із документа про description
  [Arguments]  ${raw_value}
  ${return_value}=  Set Variable  ${raw_value.split('(')[1].replace(')','')}
  [return]  ${return_value}

Отримати документ
  [Arguments]  ${username}  ${tender_uaid}  ${doc_id}
  ${title}=  etender.Отримати інформацію із документа  ${username}  ${tender_uaid}  ${doc_id}  title
  ${prepared_locator}=  Set Variable  ${locator_document_href.replace('XX_doc_id_XX','${doc_id}')}
  log  ${prepared_locator}
  ${href}=  Get Element Attribute  ${prepared_locator}
  ${document_file}=  download_file_from_url  ${href}  ${OUTPUT_DIR}${/}${title}
  [return]  ${document_file}

Отримати інформацію із лоту
  [Arguments]  ${username}  ${tender_uaid}  ${object_id}  ${field_name}
  Switch browser   ${username}
  ${prepared_locator}=  Set Variable  ${locator_lot_${field_name}}
  ${prepared_locator}=  Set Variable  ${prepared_locator.replace('XX_lot_id_XX','${object_id}')}
  log  ${prepared_locator}
  Wait Until Page Contains Element  ${prepared_locator}  10
  ${raw_value}=   Get Text  ${prepared_locator}
  Run Keyword And Return  Конвертувати інформацію із лоту про ${field_name}  ${raw_value}

Конвертувати інформацію із лоту про title
  [Arguments]  ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про description
  [Arguments]  ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про value.currency
  [Arguments]  ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про value.valueAddedTaxIncluded
  [Arguments]  ${return_value}
  ${return_value}=  Run Keyword If  'ПДВ' in '${return_value}'  Set Variable  True
    ...  ELSE  Set Variable  False
  Log  ${return_value}
  ${return_value}=   Convert To Boolean   ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про value.amount
  [Arguments]  ${raw_value}
  ${return_value}=  parse_currency_value_with_spaces  ${raw_value} XX
  ${return_value}=  Convert To Number  ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про minimalStep.amount
  [Arguments]  ${raw_value}
  ${return_value}=  parse_currency_value_with_spaces  ${raw_value}
  ${return_value}=  Convert To Number  ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про minimalStep.valueAddedTaxIncluded
  [Arguments]  ${return_value}
  ${return_value}=  Run Keyword If  'ПДВ' in '${return_value}'  Set Variable  True
    ...  ELSE  Set Variable  False
  Log  ${return_value}
  ${return_value}=   Convert To Boolean   ${return_value}
  [return]  ${return_value}

Конвертувати інформацію із лоту про minimalStep.currency
  [Arguments]  ${raw_value}
  ${return_value}=  get_minimalStep_currency  ${raw_value}
  [return]  ${return_value}

Отримати інформацію із нецінового показника
  [Arguments]  ${username}  ${tender_uaid}  ${object_id}  ${field_name}
  Reload Page
  Run Keyword And Ignore Error  Wait Scroll Click   xpath=//div[contains(@ng-if,"lot.items") and contains(@id,"tree")]//span[@data-toggle="collapse"]/span[contains(.,"критерії оцінки")]  # open Нецінові (якісні) критерії оцінки section to make its text visible
  Sleep  2

  Run Keyword And Return  Отримати інформацію із нецінового показника про ${field_name}  ${object_id}

Отримати інформацію із нецінового показника про title
  [Arguments]  ${object_id}
  Run Keyword And Return  Get Text  xpath=//span[contains(.,'${object_id}')]

Отримати інформацію із нецінового показника про description
  [Arguments]  ${object_id}
  Run Keyword And Return  Get Text  xpath=//span[contains(.,'${object_id}')]/../../..//span[contains(@ng-bind, "description")]

Отримати інформацію із нецінового показника про featureOf
  [Arguments]  ${object_id}
  Run Keyword And Return  Get Element Attribute  xpath=//span[contains(.,'${object_id}')]@name

Відкрити розділ Деталі Закупівлі
  Дочекатись зникнення blockUI
  Wait Scroll Click     xpath=//li[@id="naviTitle0"]/span  # go to Деталі Закупівлі tab
  Дочекатись зникнення blockUI

Відкрити розділ вимог і скарг
  Дочекатись зникнення blockUI
  Wait Scroll Click     xpath=//li[@id="naviTitle2"]/span  # go to complaints
  Дочекатись зникнення blockUI

Створити постачальника, додати документацію і підтвердити його
  [Arguments]  ${username}  ${tender_uaid}  ${object}  ${document}
  Sleep  30
  Wait Until Keyword Succeeds   10 min  20 x  Wait for upload before signing  # there: button - Перейти до підпису"
  Підписати ЕЦП
  Sleep  30

  Reload Page
  Відкрити розділ Деталі Закупівлі
  ${amount}=             Get From Dictionary  ${object.data.value}  amount
  ${supplier_name}=      Get From Dictionary  ${object.data.suppliers[0]}               name
  ${supplier_code}=      Get From Dictionary  ${object.data.suppliers[0].identifier}    id
  ${supplier_subcInfo}=  Get From Dictionary  ${object.data.suppliers[0].identifier}    legalName
#  ${qualified}=          Get From Dictionary  ${object.data}                            qualified
  ${countryName}=        Get From Dictionary  ${object.data.suppliers[0].address}       countryName
  ${region}=             Get From Dictionary  ${object.data.suppliers[0].address}       region
  ${locality}=           Get From Dictionary  ${object.data.suppliers[0].address}       locality
  ${streetAddress}=      Get From Dictionary  ${object.data.suppliers[0].address}       streetAddress
  ${postalCode}=         Get From Dictionary  ${object.data.suppliers[0].address}       postalCode
  ${contact_name}=       Get From Dictionary  ${object.data.suppliers[0].contactPoint}  name
  ${contact_email}=      Get From Dictionary  ${object.data.suppliers[0].contactPoint}  email
  ${contact_url}=        Get From Dictionary  ${object.data.suppliers[0].contactPoint}  url
  ${contact_phone}=      Get From Dictionary  ${object.data.suppliers[0].contactPoint}  telephone
  ${contact_fax}=        Get From Dictionary  ${object.data.suppliers[0].contactPoint}  faxNumber

  ${amount}=  float_to_string_2f  ${amount}
  Input text  id=amount  ${amount}
  # TODO: read curency from dict
  Select From List By Label  id=currency  грн
  Input text  id=orgName    ${supplier_name}
  Input text  id=orgCode    ${supplier_code}
  Input text  id=subcInfo   ${supplier_subcInfo}
  # TODO: use qualified from dict
  Click Element              xpath=//div[@ng-if="!detailes.isLimitedReporting"]//input[1]  # Відповідність кваліфікаційним критеріям: Відповідає
  Select From List By Label  xpath=//select[@ng-model="data.country"]  ${countryName}
  Run Keyword If  '${region}' == 'місто Київ'  Select From List By Label  xpath=//*[contains(@id,"_region")]  місто Київ
  Run Keyword If  '${region}' != 'місто Київ'  Run Keywords
  ...  Select From List By Label  xpath=//*[contains(@id,"_region")]     ${region}
  ...  AND  Input text            xpath=//*[contains(@name,"_newCity")]  ${locality}
  Input text  xpath=//*[contains(@name,"_addressStr")]  ${streetAddress}
  Input text  xpath=//*[contains(@name,"_postIndex")]   ${postalCode}
  Input text  name=cpName  ${contact_name}
  Input text  id=email  ${contact_email}
  Input text  id=url  ${contact_url}
  Input text  id=phone  ${contact_phone}
  Input text  id=fax  ${contact_fax}
  Click Element  id=btnCreateAward

  Sleep  30
  Reload Page
  Відкрити розділ Деталі Закупівлі
  Click Element  xpath=//a[@data-target="#modalGetAwards"]  # button - Оцінка документів Кандидата
  Wait and Select By Label      xpath=//div[@ng-controller="modalGetAwardsCtrl"]//select  Повідомлення про рішення
  Завантажити док  ${username}  ${document}  xpath=//button[@ng-model="lists.documentsToAdd"]  id=downloadAwardDocs
  Відкрити розділ Деталі Закупівлі
  Capture Page Screenshot
  Wait Until Keyword Succeeds   10 min  20 x  Wait for upload  # there: button - Оцінка документів Кандидата

  Wait and Click    xpath=//button[@ng-click="getAwardsNextStep()"]        # button - Наступний крок
  Wait and Click    xpath=//button[@ng-click="showSignModalAward(award)"]  # button - Підписати рішення
  Підписати ЕЦП
  Sleep  30
# shall be signed here -------------------------------------------------------------
  Wait Until Keyword Succeeds   10 min  20 x  Wait for upload  # there: button - Оцінка документів Кандидата
  Click Element  xpath=//button[@ng-click="getAwardsNextStep()"]        # button - Наступний крок
  Capture Page Screenshot
  Sleep  5
  Capture Page Screenshot
  Click Element  xpath=//button[@click-and-block="setDecision(1)"]      # button - Підтвердити
  Sleep  5
  Capture Page Screenshot
  Sleep   2

Wait for upload
  Reload Page
  Wait Scroll Click     xpath=//a[@data-target="#modalGetAwards"]  15            # button - Оцінка документів Кандидата
  Sleep  5
  Page Should Not Contain  Не всі документи експортовані

Wait for upload before signing
  Reload Page
  Wait Scroll Click     xpath=//button[contains(.,"Перейти до підпису")]  15
  Sleep  1
  Page Should Not Contain  Не всі документи експортовані
  Page Should Not Contain  Не всі документи экспортовано до Центральної бази.
  Wait Until Element Is Visible  id=CAsServersSelect

Підтвердити підписання контракту
  [Arguments]  ${username}  ${tender_uaid}  ${contract_index}
  Log  Temporary sleep to compensate timings, let's wait for 1 minute to be sure  WARN
  Sleep  60
  Reload Page
  Відкрити розділ Деталі Закупівлі
  ${tmp_location_tender}=  Get Location

# ==================  1 - enter values into fields, save
  Click Element     xpath=//a[.="Внести інформацію про договір"]
  Wait and Input    id=contractNumber  ${contract_index}
  ${time_now_tmp}=     get_time_now
  ${date_now_tmp}=     get_date_now
  ${date_future_tmp}=  get_date_10d_future
  Input text  name=dateSigned  ${date_now_tmp}
  Input text  name=timeSigned  ${time_now_tmp}
  Input text  name=endDate     ${date_future_tmp}
  Wait Scroll Click     xpath=//button[@data-target="#saveData"]  # button - Опублікувати документи та завершити пізніше
  Wait and Input        xpath=//div[@id="saveData"]//button[@ng-click="save(documentsToAdd)"]  10

# ==================  2 - wait for upload
  Sleep  60  # wait for upload
  Go To  ${tmp_location_tender}
  Sleep  5
  Capture Page Screenshot
  Відкрити розділ Деталі Закупівлі
  Wait Scroll Click     xpath=//a[.="Редагувати інформацію про договір "]

# ==================  3 - upload doc

  Wait and Select By Label      id=docType  Підписаний договір
  ${file_path}  ${file_name}  ${file_content}=   create_fake_doc
  Завантажити док  ${username}  ${file_path}  xpath=//button[@ng-model="documentsToAdd"]
  Відкрити розділ Деталі Закупівлі
  Wait Scroll Click     xpath=//a[.="Редагувати інформацію про договір "]
  ${methodType}=  Get From Dictionary  ${USERS.users['${username}']}  method_type
  Run Keyword If  '${methodType}' in ('aboveThresholdEU', 'aboveThresholdUA', 'negotiation')  Підтвердити контракт додаванням ЕЦП
  Wait Scroll Click  xpath=//button[@click-and-block="sign()"]  # button - Завершити закупівлю
  Capture Page Screenshot
  Wait Until Page Contains  Підтверджено!  60

Підписати ЕЦП
  [Arguments]
  Wait and Select By Label  id=CAsServersSelect  Тестовий ЦСК АТ "ІІТ"
  ${key_dir}=  Normalize Path  ${CURDIR}/../../
  Choose File  id=PKeyFileInput  ${key_dir}/Key-6.dat
  ${PKeyPassword}=  Get File  password.txt
  Wait and Input    id=PKeyPassword  ${PKeyPassword}
  Click Element     id=PKeyReadButton
  Wait and Click    id=SignDataButton  10
  Wait and Click    xpath=//div[@id="modalSign"]//button[contains(@class,"close")]

Підтвердити контракт додаванням ЕЦП
  Wait Scroll Click     xpath=//button[@click-and-block="showSignModalContract(contract)"]  10
  Підписати ЕЦП
# shall be signed here -------------------------------------------------------------
  Capture Page Screenshot
  Sleep  30
  Capture Page Screenshot
  Reload Page
  Sleep  5

Відповісти на вимогу про виправлення умов закупівлі
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${answer_data}
  # TODO: remove workaround and open complaint using given complaintID
  ${tmp_hacked_title}=  Get From Dictionary  ${USERS.users['Tender_User'].tender_claim_data.claim.data}  title
  ${tmp_hacked_id}=     Get From Dictionary  ${USERS.users['Tender_User'].tender_claim_data}  complaintID
  log  ${tmp_hacked_id}
  ${tmp_hacked_title}=  Run Keyword If  '${tmp_hacked_id}' != '${complaintID}'  temporary keyword for title update  ${USERS.users['Tender_User'].lot_claim_data}  ${complaintID}
  ...   ELSE  Set Variable  ${tmp_hacked_title}
  Reload Page
  Sleep   25
  Дочекатись зникнення blockUI
  Відкрити розділ вимог і скарг
  Wait and Click  xpath=//a[@role="button" and @aria-expanded="false" and contains(.,"${tmp_hacked_title}")]
  Wait Scroll Click  xpath=(//button[@ng-click="showAnswerComplaintModal(currentComplaint)"])[1]
  Sleep  5
  ${resolution}=      Get From Dictionary  ${answer_data.data}  resolution
  ${resolutionType}=  Get From Dictionary  ${answer_data.data}  resolutionType
  ${tendererAction}=  Get From Dictionary  ${answer_data.data}  tendererAction
  Wait and Input    id=tenderAction   ${tendererAction}
  Input text        id=descriptionEl  ${resolution}
  Select From List By Value  id=resolutionTypeEl  ${resolutionType}
  Wait and Click    id=btnanswerComplaint
# TODO  REFACTOR
Відповісти на вимогу про виправлення визначення переможця
  [Arguments]  ${username}  ${tender_uaid}  ${complaintID}  ${answer_data}  ${award_index}
  # TODO: rework duplicated code - see "Відповісти на вимогу про виправлення умов закупівлі"
  # TODO: remove workaround and open complaint using given complaintID
  ${tmp_hacked_title}=  Get From Dictionary  ${USERS.users['Tender_User'].claim_data.claim.data}  title
  Reload Page
  Дочекатись зникнення blockUI
  Відкрити розділ вимог і скарг
  Wait and Click  xpath=//a[@role="button" and @aria-expanded="false" and contains(.,"${tmp_hacked_title}")]
  Wait Scroll Click  xpath=(//button[@ng-click="showAnswerComplaintModal(currentComplaint)"])[1]
  ${resolution}=      Get From Dictionary  ${answer_data.data}  resolution
  ${resolutionType}=  Get From Dictionary  ${answer_data.data}  resolutionType
  ${tendererAction}=  Get From Dictionary  ${answer_data.data}  tendererAction
  Input text  id=tenderAction   ${tendererAction}
  Input text  id=descriptionEl  ${resolution}
  Select From List By Value  id=resolutionTypeEl  ${resolutionType}
  Wait and Click  id=btnanswerComplaint

temporary keyword for title update
  [Arguments]  ${lot_claim_data}  ${complaintID}
  ${tmp_hacked_title}=  Get From Dictionary  ${lot_claim_data.claim.data}  title
  ${tmp_hacked_id}=     Get From Dictionary  ${lot_claim_data}             complaintID
  [return]  ${tmp_hacked_title}

Завантажити документ рішення кваліфікаційної комісії
  [Arguments]  ${username}  ${document}  ${tender_uaid}  ${award_num}
  Sleep  3
  # TODO: rework duplicated code - see "Створити постачальника, додати документацію і підтвердити його"
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Дочекатись зникнення blockUI
  Відкрити розділ Деталі Закупівлі
  Click Element  xpath=//a[@data-target="#modalGetAwards"]  # button - Оцінка документів Кандидата
  Select From List By Label  id=docType  Повідомлення про рішення
  Завантажити док  ${username}  ${document}  xpath=//button[@ng-model="lists.documentsToAdd"]  xpath=//button[@ng-click="downloadDocsGetAward(lists.documentsToAdd)"]
  Відкрити розділ Деталі Закупівлі
  Wait Until Keyword Succeeds   10 min  20 x  Wait for upload  # there: button - Оцінка документів Кандидата
  Reload Page

Підтвердити постачальника
  [Arguments]  ${username}  ${tender_uaid}  ${award_num}
  # TODO: rework duplicated code - see "Створити постачальника, додати документацію і підтвердити його"
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Дочекатись зникнення blockUI
  Відкрити розділ Деталі Закупівлі
  Wait and Click    xpath=//a[@data-target="#modalGetAwards"]  # button - Оцінка документів Кандидата
  Wait and Click    xpath=//button[@ng-click="getAwardsNextStep()"]        # button - Наступний крок
  Wait and Click    xpath=//button[@click-and-block="setDecision(1)"]      # button - Підтвердити

Відкрити подробиці кваліфікації за індексом
  [Arguments]  ${qualification_num}
  Capture Page Screenshot
  Wait Until Element Is Visible  xpath=//div[@id="accordion-0-${qualification_num}"]//button[contains(.,"Підтвердити кваліфікацію") and @data-toggle="collapse"]   # inner confirmation button
  ${is_expanded}=  Run Keyword And Return Status  Element Should Be Visible  xpath=//div[@id="aply-0-${qualification_num}"]//button[@click-and-block="vm.q.active(qualification)"]
  Return From Keyword If  '${is_expanded}' != 'False'
  Wait Scroll Click     xpath=//div[@id="accordion-0-${qualification_num}"]//button[contains(.,"Підтвердити кваліфікацію") and @data-toggle="collapse"]
  Sleep  1
  Capture Page Screenshot

Wait for doc upload in qualification
  [Arguments]  ${qualification_num}
  Reload Page
  Wait Scroll Click     xpath=(//div[contains(@class,"row")]//div[contains(@ng-if,"qualification.documents.length") and contains(.,"Показати документи")])[1+${qualification_num}]
  Page Should Not Contain  Очікує публікації в ЦБД

Завантажити документ у кваліфікацію
  [Arguments]  ${username}  ${document}  ${tender_uaid}  ${qualification_num}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Дочекатись зникнення blockUI
  Відкрити розділ Деталі Закупівлі
  Capture Page Screenshot
  Відкрити подробиці кваліфікації за індексом  ${qualification_num}
  Sleep  1
  Capture Page Screenshot
  Завантажити док  ${username}  ${document}  xpath=//div[@id="aply-0-${qualification_num}"]//button[@ng-model="qualification.addDocuments"]
  Відкрити розділ Деталі Закупівлі
  Wait Until Keyword Succeeds   10 min  20 x  Wait for doc upload in qualification  ${qualification_num}  # there: open qualification doc section and check are all docs are loaded
  Capture Page Screenshot
  Reload Page

Підтвердити кваліфікацію
  [Arguments]  ${username}  ${tender_uaid}  ${qualification_num_p}
  # TODO: fix this workaround and get real "last" qualification
  ${qualification_num}=  Run Keyword If  '${qualification_num_p}' == '-1'  Set Variable  1
  ...              ELSE  Set Variable  ${qualification_num_p}
  Перейти на сторінку тендера за потреби   ${username}  ${tender_uaid}
  Дочекатись зникнення blockUI
  Відкрити розділ Деталі Закупівлі
  Відкрити подробиці кваліфікації за індексом  ${qualification_num}
  Wait and Click    xpath=//div[@id="aply-0-${qualification_num}"]//button[@ng-click="showSignModalQualification(qualification)"]
  Підписати ЕЦП
# shall be signed here -------------------------------------------------------------
  Capture Page Screenshot
  Sleep  30
  Capture Page Screenshot
  Reload Page
  Відкрити подробиці кваліфікації за індексом  ${qualification_num}
  Wait Scroll Click  xpath=//div[@id="aply-0-${qualification_num}"]//input[@ng-model="qualification.eligible"]
  Click Element     xpath=//div[@id="aply-0-${qualification_num}"]//input[@ng-model="qualification.qualified"]
  Capture Page Screenshot
  Wait Scroll Click  xpath=//div[@id="aply-0-${qualification_num}"]//button[@click-and-block="vm.q.active(qualification)"]
  Wait Until Page Contains  Пропозицію кваліфіковано!  60

Затвердити остаточне рішення кваліфікації
  [Arguments]  ${username}  ${tender_uaid}
  Capture Page Screenshot
  Reload Page
  Wait Scroll Click     xpath=//button[@click-and-block="standStill()"]
