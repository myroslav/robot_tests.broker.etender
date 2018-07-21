*** Settings ***
Library  String
Library  DateTime
Library  etender_service.py

*** Variables ***
${locator.auctionID}                                           id=tenderidua
${locator.title}                                               id=title
${locator.description}                                         id=description
${locator.item.description}                                    id=description
${locator_item_quantity}                                       xpath=//div[contains(@name,'item_id')]//*[contains(@id, 'itemsQuantity')]
${locator.minimalStep.amount}                                  xpath=//div[@class = 'row']/div/p[text() = 'Мінімальний крок аукціону:']/parent::div/following-sibling::div/p
${locator.procuringEntity.name}                                jquery=customer-info>div.row:contains("Найменування:")>:eq(1)>
${locator.value.amount}                                        id=lotvalue_0
${locator.proposition.value.amount}                            xpath=//div/input[@ng-model='bid.value.amount']
${locator.button.updateBid}                                    xpath=//button[@click-and-block='updateBid(bid)']
${locator.button.selectDocTypeForDoc}                          xpath=//select[@name='docType' and @id='docType' and @ng-model='selectedDocType' and @ng-change='docTypeSelectHundler()']
${locator.button.selectDocTypeForIll}                          xpath=(//tender-documents//*[@id='docType' and @ng-change='docTypeSelectHundler()'])
${locator.button.selectDocTypeForLicence}                      id=selectDoctype2
${locator.button.selectDocTypeForProtocol}                     id=selectDoctype1
${locator.button.addProtocol}                                  id=addNewDocToExistingBid2_0
${locator.button.addDoc}                                       id=tend_doc_add
${locator.dgfID}                                               xpath=//div[@class = 'row']/div/p[text() = 'Номер лоту:']/parent::div/following-sibling::div/p   # на сторінці перегляду
${locator.tenderPeriod.endDate}                                xpath=//div[@class = 'row']/div/p[text() = 'Завершення прийому пропозицій:']/parent::div/following-sibling::div/p
${locator.auctionPeriod.startDate}                             xpath=//span[@ng-if='lot.auctionPeriod.startDate']
${locator_item_description}                                    xpath=//div[@class = 'row']/div/p[text() = 'Опис активу:']/parent::div/following-sibling::div/p  #id=x25
${locator.items[0].description}                                id=style-desc-stuf-id0
${locator.items[1].description}                                id=style-desc-stuf-id1
${locator.items[2].description}                                id=style-desc-stuf-id2
${locator.items[0].deliveryDate.endDate}                       xpath=(//div[@class = 'col-sm-8']/p[@class='ng-binding'])[14]
${locator.items[0].deliveryLocation.latitude}                  id=delivery_latitude0
${locator.items[0].deliveryLocation.longitude}                 id=delivery_longitude0
${locator.items[0].deliveryAddress.postalCode}                 id=delivery_postIndex_0
${locator.items[0].deliveryAddress.countryName}                id=delivery_country_0
${locator.items[0].deliveryAddress.region}                     id=delivery_region_0
${locator.items[0].deliveryAddress.locality}                   xpath=//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.city.title']
${locator.items[0].deliveryAddress.streetAddress}              xpath=//div[@class='col-sm-8']//span[@ng-if='item.deliveryAddress.addressStr']
${locator.items[0].classification.scheme}                      xpath=(//p[@id="qa-label-item_classification0"]/span)
${locator.items[1].classification.scheme}                      xpath=(//p[@id="qa-label-item_classification1"]/span)
${locator.items[2].classification.scheme}                      xpath=(//p[@id="qa-label-item_classification2"]/span)
${locator.items[0].classification.id}                          id=item_classification0
${locator.items[1].classification.id}                          id=item_classification1
${locator.items[2].classification.id}                          id=item_classification2
${locator.items[0].classification.description}                 id=item_class_descr0
${locator.items[1].classification.description}                 id=item_class_descr1
${locator.items[2].classification.description}                 id=item_class_descr2
${locator_item_classification.description}                     id=item_class_descr0
${locator_item_classification.scheme}                          xpath=//div[@ng-repeat='item in lot.items']//p[contains(text(),'Класифікатор')]
${locator.items[0].additionalClassifications[0].scheme}        xpath=//div[6]/div[3]/div/p
${locator.items[0].additionalClassifications[0].id}            id=additionalClassification_id0
${locator.items[0].additionalClassifications[0].description}   xpath=//span[@id="item_add_class_descr0"]
${locator.items[1].additionalClassifications[0].description}   xpath=//span[@id="item_add_class_descr1"]
${locator.items[2].additionalClassifications[0].description}   xpath=//span[@id="item_add_class_descr2"]
${locator.items[0].unit.code}                                  id=item_unit_symb0
${locator.items[1].unit.code}                                  id=item_unit_symb1
${locator.items[2].unit.code}                                  id=item_unit_symb2
${locator.items[0].contractPeriod.startDate}                   xpath=//div[@id='contractPeriodIndex_0']/span[1]
${locator.items[1].contractPeriod.startDate}                   xpath=//div[@id='contractPeriodIndex_1']/span[1]
${locator.items[2].contractPeriod.startDate}                   xpath=//div[@id='contractPeriodIndex_2']/span[1]
${locator.items[0].contractPeriod.endDate}                     xpath=//div[@id='contractPeriodIndex_0']/span[2]
${locator.items[1].contractPeriod.endDate}                     xpath=//div[@id='contractPeriodIndex_1']/span[2]
${locator.items[2].contractPeriod.endDate}                     xpath=//div[@id='contractPeriodIndex_2']/span[2]
${locator.minNumberOfQualifiedBids}                            xpath=//div[@class = 'row']/div/p[text() = 'Мінімальна кількість учасників:']/parent::div/following-sibling::div/p
${locator_item_unit.code}                                      id=item_unit_symb0
${locator.items[0].quantity}                                   id=item_quantity0
${locator.items[1].quantity}                                   id=item_quantity1
${locator.items[2].quantity}                                   id=item_quantity2
${locator.questions[0].title}                                  id=quest_title_0
${locator.questions[0].description}                            id=quest_descr_0
${locator.questions[0].date}                                   id=quest_date_0
${locator.questions[0].answer}                                 id=question_answer_0
${locator_question_item}                                       xpath=//select[@ng-model='vm.question.item']
${locator.cancellations[0].status}                             xpath=//div[contains(@ng-if,'detailes.cancellations')]//p[text()='Статус']/parent::div/following-sibling::div/p
${locator.cancellations[0].reason}                             xpath=//div[contains(@ng-if,'detailes.cancellations')]//p[text()='Причина:']/parent::div/following-sibling::div/p
${locator.contracts[-1].status}                                xpath=//div[@ng-if='isShowContract(award)']//p[text()='Статус договору:']/parent::div/following-sibling::div/p
${locator.value.currency}                                      xpath=//span[@id='lotvalue_0']/parent::p
${locator.value.valueAddedTaxIncluded}                         xpath=//span[@id='lotvalue_0']/following-sibling::i
${locator.guarantee.amount}                                    xpath=//div[@class = 'row']/div/p[contains(.,'Розмiр гарантiйного внеску:')]/parent::div/following-sibling::div/p  # на сторінці перегляду
${locator.items[0].unit.name}                                  id=item_unit_symb0
${locator.items[1].unit.name}                                  id=item_unit_symb1
${locator.items[2].unit.name}                                  id=item_unit_symb2
${locator.bids}                                                id=ParticipiantInfo_0
${locator.bids_0_amount}                                       xpath=(//form[@name='changeBidForm']//div[@class = 'row']/div/p[text() = 'Cума:']/parent::div/following-sibling::div/div/div/span)[1]  #note: mixed en/ru chars!
${locator.status}                                              xpath=//p[text() = 'Статус:']/parent::div/following-sibling::div/p
${huge_timeout_for_visibility}  300
${grid_page_text}                                              ProZorro.продажі
${locator.eligibilityCriteria}                                 xpath=//div[@class = 'row']/div/p[text() = 'Критерії прийнятності:']/parent::div/following-sibling::div/p
${locator.lot_items_unit}                                      id=itemsUnit0                    #Одиниця виміру
${locator_document_title}                                      xpath=//a[contains(text(),'XX_doc_id_XX')]
${locator_document_href}                                       xpath=(//a[contains(text(),'XX_doc_id_XX')])@href
${locator_document_description}                                xpath=//a[contains(text(),'XX_doc_id_XX')]/following-sibling::span
${locator_tender_document_documentType}                        xpath=(//tender-documents/div[@ng-show='documents.length>0']//a)[XX_doc_index_XX +1]/../../../li[@class='list-group-item']
${locator_question_title}                                      xpath=//span[contains(@id,'quest_title_') and contains(text(),'XX_que_id_XX')]
${locator_question_description}                                xpath=//span[contains(@id,'quest_title_') and contains(text(),'XX_que_id_XX')]/ancestor::div[contains(@ng-repeat,'question in questions')]//span[contains(@id,'quest_descr_')]
${locator_question_answer}                                     xpath=//span[contains(@id,'quest_title_') and contains(text(),'XX_que_id_XX')]/ancestor::div[contains(@ng-repeat,'question in questions')]//pre[contains(@id,'question_answer_')]
${locator_dgfID}                                               id=dgfID  # на сторінці створення
${locator_start_auction_creation}                              xpath=//a[contains(@class, 'btn btn-info') and contains(@href, 'createTender')]  # на сторінці МОЇ ТОРГИ
${locator_block_overlay}                                       xpath=//div[@class='blockUI blockOverlay']
${locator_auction_search_field}                                xpath=//input[@ng-model='searchString' and contains(@placeholder,'Пошук')]
${actives_counter_of_lot}                                      xpath=//div[@class = 'row']/div/p[text() = 'Загальна кількість активів лоту:']/parent::div/following-sibling::div/p
${locator_tender_attempts}                                     id=tenderAttempts
${locator.dgfDecisionDate}                                     id=dgfDecisionDateOut
${locator.dgfDecisionID}                                       id=dgfDecisionIdOut
${locator_dgfDecisionIDCreate}                                 id=dgfDecisionID
${dgfPublicAssetCertificateTitle}                              id=dgfPublicAssetCertificateTitle
${xdgfPublicAssetCertificateLinkId}                            id=xdgfPublicAssetCertificateLinkId
${locator.procurementMethodType}                               xpath=//span[@ng-show='getTenderProcedureType()']
${locator.dgfDecisionDate}                                     id=dgfDecisionDateId
${locator.dgfDecisionID}                                       id=dgfDecisionID_Id
${locator.tenderAttempts}                                      id=tenderAtempts
${locator_search_cav}                                          xpath=//div[@ng-controller='classificationCtrl']//input[contains(@ng-model, 'searchstring')]
${locator.awards[0].status}                                    xpath=(//div[@ng-repeat="award in lot.awards"])[1]//p[text()="Статус:"]/parent::div/following-sibling::div/p
${locator.awards[1].status}                                    xpath=(//div[@ng-repeat="award in lot.awards"])[2]//p[text()="Статус:"]/parent::div/following-sibling::div/p
${locator_auction_value_amount}                                id=Value
${locator_auction_minimalStep_amount}                          id=minimalStep
${locator_auction_guarantee_amount}                            id=Guarantee
${locator_auction_registrationFee_amount}                      id=RegistrationFee
${locator_auction_bankAccount_bankName}                        id=accountDetailsBankName
${locator_auction_bankAccount_description}                     id=accountDetailsDescription

*** Keywords ***
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

Wait and Get Text
  [Arguments]  ${locator}  ${timeout}=5
  [Documentation]  Wait for visibility and then input text
  Wait Until Element Is Visible  ${locator}  ${timeout}
  Run Keyword And Return  Get Text  ${locator}

Wait and Get Attribute
  [Arguments]  ${locator}  ${attribute}  ${timeout}=5
  [Documentation]  Wait for visibility and then input text
  Wait Until Element Is Visible  ${locator}  ${timeout}
  Run Keyword And Return  Get Element Attribute  ${locator}@${attribute}

JavaScript scrollBy
  [Arguments]  ${x_offset}  ${y_offset}
  Execute JavaScript  window.scrollBy(${x_offset}, ${y_offset})

scrollIntoView by script
  [Arguments]  ${locator}
  [Documentation]  use xpath or id
  ${locator}=       prepare_locator_to_scroll   ${locator}  # convert id to xpath and cut xpath=
  Execute JavaScript  document.evaluate('${locator}', document.documentElement, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).scrollIntoView();
  JavaScript scrollBy  0  -100

Дочекатись зникнення blockUI
  [Arguments]
  Wait Until Keyword Succeeds  15x  0s  Wait Until Page Does Not Contain Element  xpath=//div[@class='blockUI blockOverlay']  2

Input String
  [Arguments]  ${locator}  ${value}
  [Documentation]  Converts value to string and inputs to locator field
  ${value}=     Convert To String       ${value}
  Input text    ${locator}              ${value}

Підготувати клієнт для користувача
  [Arguments]  @{ARGUMENTS}
  [Documentation]  Відкрити браузер, створити об’єкт api wrapper, тощо
  Open Browser  ${USERS.users['${ARGUMENTS[0]}'].homepage}  ${USERS.users['${ARGUMENTS[0]}'].browser}  alias=${ARGUMENTS[0]}
  Set Window Size  @{USERS.users['${ARGUMENTS[0]}'].size}
  Set Window Position  @{USERS.users['${ARGUMENTS[0]}'].position}
  Set Global Variable   ${tenderpage}   ${EMPTY}
  Run Keyword If  '${ARGUMENTS[0]}' != 'Etender_Viewer'  Login  ${ARGUMENTS[0]}

Підготувати дані для оголошення тендера
  [Arguments]  ${username}  ${tender_data}  ${role_name}
  ${tender_data}=  Run Keyword IF  '${username}' != 'Etender_Viewer'   adapt_data   ${tender_data}
  ...             ELSE  Set Variable  ${tender_data}
  Log  ${tender_data}
  [return]  ${tender_data}

Редагувати asset
  [Arguments]  ${usernamme}  ${tender_uaid}
  etender.Пошук об’єкта МП по ідентифікатору  ${usernamme}  ${tender_uaid}
  Wait and Click    id=EditAsset

Зберегти зміни
  Wait and Click    id=CreateTenderE

Login
  [Arguments]  ${username}
  Wait and Click   id=btnLogin     15
  Wait and Input   id=inputUsername     ${USERS.users['${username}'].login}     15
  Wait and Input   id=inputPassword     ${USERS.users['${username}'].password}  15
  Wait and Click   id=btn_submit
  Дочекатись зникнення blockUI
  Run Keyword And Ignore Error  Wait and Click  xpath=//button[@class='cancel'][contains(text(), 'Відміна')]  60  #Закрити повідомлення про наявність питань
  ${status}  ${value}=  Run Keyword And Ignore Error  Перевірка перебування у режимі навчання
  Run Keyword If        '${status}' == 'FAIL'         Fatal Error

Перевірка перебування у режимі навчання
  Page Should Contain Element        xpath=//span[@bs-tooltip='tooltip'][contains(text(), 'режимі навчання')]       Організація у режим реальних торгів!

Створити об'єкт МП
  [Arguments]  ${username}  ${asset}
  Wait and Click  xpath=//a[@href="#/profile"]
  Wait and Click  xpath=//a[@href="/#/createAsset"]
  Log       ${asset}
  ${asset}=     Set Variable        ${asset.data}

  Wait and Input    id=title        ${asset.title}
  Input Text        id=title_en     ${asset.title_en}
  Input Text        id=title_ru     ${asset.title_ru}
  Input Text        id=description      ${asset.description}
  Input Text        id=description_en   ${asset.description_en}
  Input Text        id=description_ru   ${asset.description_ru}

  Input Text        id=decisionTitle    ${asset.decisions[0].title}
  Input Text        id=decisionTitle_en     ${asset.decisions[0].title_en}
  Input Text        id=decisionTitle_ru     ${asset.decisions[0].title_ru}
  ${decisionDate}=  convert_dgfDecisionDate_to_etender_format   ${asset.decisions[0].decisionDate}
  Input Text        id=decisionDate     ${decisionDate}
  Input Text        id=decisionID       ${asset.decisions[0].decisionID}
  Створити об'єкти активу   ${asset['items']}

  Click Element     xpath=//label[contains(., 'Дані балансоутримувача')]
  Wait and Input    id=identifierApiId      ${asset.assetHolder.identifier.id}
  Input Text        id=assetHolderName      ${asset.assetHolder.name}
  Input Text        id=identifierLegalName  ${asset.assetHolder.identifier.legalName}

  Wait and Click    xpath=//label[input[@ng-model="showData.address"]]
  ${region}=    Set Variable If  '${asset.assetHolder.address.region}'=='місто Київ'  Київ  ${asset.assetHolder.address.region}
  Select From List By Label     id=region   ${region}
  Run Keyword Unless  '${region}'=='Київ'  Input Text    id=newCity     ${asset.assetHolder.address.locality}
  Input Text        id=addressStr           ${asset.assetHolder.address.streetAddress}
  Input Text        id=postIndex            ${asset.assetHolder.address.postalCode}

  Wait and Click    xpath=//label[input[@ng-model="showData.contactPoint"]]
  Input Text        id=lastName     qwe
  Input Text        id=firstName    qwe
  Input Text        id=patronymic   qwe
  Input Text        id=email        ${asset.assetHolder.contactPoint.email}
  Input Text        id=phone        ${asset.assetHolder.contactPoint.telephone}00000
  Input Text        id=url          ${asset.assetHolder.contactPoint.url}
  Input Text        id=fax          ${asset.assetHolder.contactPoint.faxNumber}

  Зберегти зміни
  Sleep  15
  ${asset_id}=  Wait Until Keyword Succeeds  10 min  30 sec  Field Value Is Not Empty  id=assetidua
  Wait and Click    id=publishBtn
  Дочекатись зникнення blockUI
  Reload Page
  Дочекатись зникнення blockUI
  [Return]  ${asset_id}

Field Value Is Not Empty
  [Arguments]  ${locator}
  Reload Page
  Дочекатись зникнення blockUI
  ${text}=   Get Text    ${locator}
  Run Keyword  Should Not Be Empty  ${text}
  [Return]  ${text}


Пошук об’єкта МП по ідентифікатору
  [Arguments]  ${username}  ${tender_uaid}
  Wait and Click    id=assetBtn
  Wait and Click    id=assetTab
  Wait and Input    xpath=//input[@ng-model="searchString"]  ${tender_uaid}
  Wait and Click    xpath=//a[@ng-click="search()"]
  Дочекатись зникнення blockUI
  Wait and Click    xpath=//a[contains(@href,'assetDetails')]
  Дочекатись зникнення blockUI

Оновити сторінку з об'єктом МП
  [Arguments]  ${username}  ${tender_uaid}
  Reload Page
  Дочекатись зникнення blockUI

Отримати інформацію із об'єкта МП
  [Arguments]  ${username}  ${tender_uaid}  ${field}
  Run Keyword And Return    Отримати інформацію із об'єкта про ${field}

Отримати інформацію із об'єкта про assetID
  Run Keyword And Return    Wait and Get Text  id=assetidua

Отримати інформацію із об'єкта про date
  ${value}=     Get Text    id=assetCreationTime
  Run Keyword And Return    convert_etender_date_to_iso_format  ${value}

Отримати інформацію із об'єкта про dateModified
  ${value}=     Get Text    id=assetDate
  Run Keyword And Return    convert_etender_date_to_iso_format  ${value}

Отримати інформацію із об'єкта про rectificationPeriod.endDate
  ${value}=     Get Text    id=rectificationPeriodEnd
  Run Keyword And Return    convert_etender_date_to_iso_format  ${value}

Отримати інформацію із об'єкта про status
  ${value}=     Get Text    id=assetStatus
  Run Keyword And Return    convert_etender_string_to_common_string     ${value}

Отримати інформацію із об'єкта про title
  Run Keyword And Return    Get Text    id=titleOut

Отримати інформацію із об'єкта про description
  Run Keyword And Return    Get Text    id=descriptionOut

Отримати інформацію із об'єкта про decisions[0].title
  Run Keyword And Return    Get Text    id=decisionTitle

Отримати інформацію із об'єкта про decisions[0].decisionDate
  ${value}=     Get Text    id=decisionDate
  Run Keyword And Return    convert_etender_date_to_ymd     ${value}

Отримати інформацію із об'єкта про decisions[0].decisionID
  Run Keyword And Return    Get Text    id=decisionID

Отримати інформацію із об'єкта про assetHolder.name
  Run Keyword And Return    Get Text    id=assetHolderName

Отримати інформацію із об'єкта про assetHolder.identifier.scheme
  ${value}=     Get Text    id=assetHolderScheme
  Run Keyword And Return    convert_etender_string_to_common_string  ${value}

Отримати інформацію із об'єкта про assetHolder.identifier.id
  Run Keyword And Return    Get Text    id=assetHolderCode

Отримати інформацію із об'єкта про assetCustodian.identifier.scheme
  ${value}=     Get Text    id=assetCustodianScheme
  Run Keyword And Return    convert_etender_string_to_common_string  ${value}

Отримати інформацію із об'єкта про assetCustodian.identifier.id
  Run Keyword And Return    Get Text    id=assetCustodianCode

Отримати інформацію із об'єкта про assetCustodian.identifier.legalName
  Run Keyword And Return    Get Text    id=assetCustodianName

Отримати інформацію із об'єкта про assetCustodian.contactPoint.name
  Run Keyword And Return    Get Text    id=assetCustodianCPName

Отримати інформацію із об'єкта про assetCustodian.contactPoint.telephone
  Run Keyword And Return    Get Text    id=assetCustodianCPPhone

Отримати інформацію із об'єкта про assetCustodian.contactPoint.email
  Run Keyword And Return    Get Text    id=assetCustodianCPEmail

Отримати інформацію із об'єкта про documents[0].documentType
  ${value}=  Wait Until Keyword Succeeds  5x  30s  Оновити сторінку і отримати дані з поля  xpath=//asset-documents//li/div
  Run Keyword And Return    convert_etender_string_to_common_string     ${value.split(': ')[1]}

Оновити сторінку і отримати дані з поля
  [Arguments]  ${locator}
  Reload Page
  Дочекатись зникнення blockUI
  Run Keyword And Return    Get Text    ${locator}

Отримати інформацію з активу об'єкта МП
  [Arguments]  ${username}  ${tender_uaid}  ${item}  ${fieldname}
  Run Keyword And Return  Отримати інформацію із предмета активу про ${fieldname}  ${item}

Отримати інформацію із предмета активу про description
  [Arguments]  ${item}
  Run Keyword And Return    Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='description']

Отримати інформацію із предмета активу про classification.scheme
  [Arguments]  ${item}
  Run Keyword And Return    Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='classification.scheme']

Отримати інформацію із предмета активу про classification.id
  [Arguments]  ${item}
  Run Keyword And Return    Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='classification.id']

Отримати інформацію із предмета активу про unit.name
  [Arguments]  ${item}
  ${value}=     Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='unit.name']
  Run Keyword And Return    convert_etender_string_to_common_string     ${value}

Отримати інформацію із предмета активу про registrationDetails.status
  [Arguments]  ${item}
  ${value}=     Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='registrationStatus']
  Run Keyword And Return    convert_etender_string_to_common_string     ${value}

Отримати інформацію із предмета активу про quantity
  [Arguments]  ${item}
  ${value}=     Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='quantity']
  Run Keyword And Return    Convert To Number   ${value}

Внести зміни в об'єкт МП
  [Arguments]  ${usernamme}  ${tender_uaid}  ${fieldname}  ${fieldvalue}
  Редагувати asset  ${usernamme}  ${tender_uaid}
  Input Text        ${locator.${fieldname}}     ${fieldvalue}
  Зберегти зміни

Внести зміни в актив об'єкта МП
  [Arguments]  ${usernamme}  ${item_id}  ${tender_uaid}  ${fieldname}  ${fieldvalue}
  Редагувати asset  ${usernamme}  ${tender_uaid}
  Input String      ${locator_item_${fieldname}.replace('item_id','${item_id}')}     ${fieldvalue}
  Зберегти зміни

Завантажити ілюстрацію в об'єкт МП
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}
  etender.Завантажити документ в об'єкт МП з типом  ${username}  ${tender_uaid}  ${filepath}  illustration

Завантажити документ в об'єкт МП з типом
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}  ${documentType}
  ${documentType}=  convert_common_string_to_etender_string  ${documentType}
  Wait and Select By Label  id=docType  ${documentType}
  Choose File     xpath=//input[@id="tend_doc_add"]  ${filepath}
  Sleep  15

Додати актив до об'єкта МП
  [Arguments]  ${username}  ${tender_uaid}  ${item}
  ${index}=     etender.Отримати кількість активів в об'єкті МП  ${username}  ${tender_uaid}
  ${index}=     Convert To Integer  ${index}
  Редагувати asset  ${username}  ${tender_uaid}
  Wait Scroll Click  id=addItem_
  Створити об'єкт активу  ${item}  ${index}
  Зберегти зміни


Отримати кількість активів в об'єкті МП
  [Arguments]  ${username}  ${tender_uaid}
  Run Keyword And Return    Get Matching Xpath Count    xpath=//div[@ng-repeat="item in detailes.items"]

Завантажити документ для видалення об'єкта МП
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}
  etender.Завантажити документ в об'єкт МП з типом  ${username}  ${tender_uaid}  ${filepath}  cancellationDetails
  Sleep  45

Видалити об'єкт МП
  [Arguments]  ${username}  ${tender_uaid}
  Reload Page
  Wait and Click  id=deleteBtn

Створити об'єкти активу
  [Arguments]  ${items}
  Log  ${items}
  ${items_count}=   Get Length  ${items}
  :FOR  ${i}  IN RANGE  ${items_count}-1
  \     Click Element   id=addItem_
  :FOR  ${i}  IN RANGE  ${items_count}
  \     Створити об'єкт активу  ${items[${i}]}  ${i}

Створити об'єкт активу
  [Arguments]  ${item}  ${index}
  Input Text    id=itemsDescription${index}     ${item.description}
  Input Text    id=itemsDescription_en${index}  ${item.description_en}
  Input Text    id=itemsDescription_ru${index}  ${item.description_ru}
  ${unit}=      convert_common_string_to_etender_string     ${item.unit.name}
  Wait and Select By Label  id=itemsUnit${index}    ${unit}
  Input String  id=itemsQuantity${index}    ${item.quantity}
  ${registrationStatus}=    convert_common_string_to_etender_string  ${item.registrationDetails.status}
  Select From List By Label     id=registrationDetailsStatus${index}    ${registrationStatus}
  Обрати класифікатор   ${item.classification.id}  ${index}
  ${region}=    Set Variable If  '${item.address.region}'=='місто Київ'  Київ  ${item.address.region}
  Select From List By Label     id=region${index}   ${region}
  Run Keyword Unless  '${region}'=='Київ'  Input Text    id=newCity${index}     ${item.address.locality}
  Input Text    id=addressStr${index}  ${item.address.streetAddress}
  Input Text    id=postIndex${index}   ${item.address.postalCode}
  Дочекатись зникнення blockUI

Створити лот
  [Arguments]  ${username}  ${tender_data}  ${asset_uaid}
  Log  ${tender_data}
  etender.Пошук об’єкта МП по ідентифікатору    ${username}  ${asset_uaid}
  Wait and Click    id=createLotBtn
  Дочекатись зникнення blockUI
  ${decision_date}=     convert_dgfDecisionDate_to_etender_format   ${tender_data.data.decisions[0].decisionDate}
  Input Text        id=decisionDate         ${decision_date}
  Input Text        id=decisionNumber       ${tender_data.data.decisions[0].decisionID}
  Click Element     id=createLot
  Sleep  15
  ${lot_id}=  Wait Until Keyword Succeeds  10 min  30 sec  Field Value Is Not Empty  id=lotidua
  Reload Page
  Дочекатись зникнення blockUI
  [Return]  ${lot_id}

Пошук лоту по ідентифікатору
  [Arguments]  ${username}  ${tender_uaid}
  Wait and Click    id=assetBtn
  Wait and Click    id=lotTab
  Дочекатись зникнення blockUI
  Wait and Input    xpath=//input[@ng-model="searchString"]  ${tender_uaid}
  Wait and Click    xpath=//a[@ng-click="search()"]
  Дочекатись зникнення blockUI
  Wait and Click    xpath=//a[contains(@href,'lotDetails')]
  Дочекатись зникнення blockUI
  Return From Keyword If  '${tenderpage}'!='${EMPTY}'
  ${page}=    Get Location
  Log   ${page}     WARN
  Set Global Variable     ${tenderpage}  ${page}

Оновити сторінку з лотом
  [Arguments]  ${username}  ${tender_uaid}
  Reload Page
  Дочекатись зникнення blockUI

Перейти на сторінку лота за потреби
  ${page}=    Get Location
  Return From Keyword If  '${page}'=='${tenderpage}'
  Go To  ${tenderpage}

Отримати інформацію із лоту
  [Arguments]  ${username}  ${tender_uaid}  ${fieldname}
  Перейти на сторінку лота за потреби
  Run Keyword And Return    Отримати інформацію із лоту про ${fieldname}

Отримати інформацію із лоту про lotID
  Run Keyword And Return    Get Text    id=lotidua

Отримати інформацію із лоту про status
  Reload Page
  Дочекатись зникнення blockUI
  Run Keyword And Return    Get Element Attribute    id=lotStatus@status

Отримати інформацію із лоту про date
  ${value}=     Get Text    id=lotCreationTime
  Run Keyword And Return    convert_etender_date_to_iso_format  ${value}

Отримати інформацію із лоту про rectificationPeriod.endDate
  ${value}=     Get Text    id=rectificationPeriodEnd
  Run Keyword And Return    convert_etender_date_to_iso_format  ${value}

Отримати інформацію із лоту про assets
  Run Keyword And Return    Get Text    id=assetObjectID

Отримати інформацію із лоту про title
  Run Keyword And Return    Get Text    id=titleOut

Отримати інформацію із лоту про description
  Run Keyword And Return    Get Text    id=descriptionOut

Отримати інформацію із лоту про lotHolder.name
  Run Keyword And Return    Get Text    id=assetHolderName

Отримати інформацію із лоту про lotHolder.identifier.scheme
  ${value}=     Get Text    id=assetHolderScheme
  Run Keyword And Return    convert_etender_string_to_common_string  ${value}

Отримати інформацію із лоту про lotHolder.identifier.id
  Run Keyword And Return    Get Text    id=assetHolderCode

Отримати інформацію із лоту про lotCustodian.identifier.scheme
  ${value}=     Get Text    id=assetCustodianScheme
  Run Keyword And Return    convert_etender_string_to_common_string  ${value}

Отримати інформацію із лоту про lotCustodian.identifier.id
  Run Keyword And Return    Get Text    id=assetCustodianCode

Отримати інформацію із лоту про lotCustodian.identifier.legalName
  Run Keyword And Return    Get Text    id=assetCustodianName

Отримати інформацію із лоту про lotCustodian.contactPoint.name
  Run Keyword And Return    Get Text    id=assetCustodianCPName

Отримати інформацію із лоту про lotCustodian.contactPoint.telephone
  Run Keyword And Return    Get Text    id=assetCustodianCPPhone

Отримати інформацію із лоту про lotCustodian.contactPoint.email
  Run Keyword And Return    Get Text    id=assetCustodianCPEmail

Отримати інформацію із лоту про decisions[${n}].title
  Run Keyword And Return    Get Text    id=decisionTitle${n}

Отримати інформацію із лоту про decisions[${n}].decisionDate
  ${value}=     Get Text    id=decisionDate${n}
  Run Keyword And Return    convert_etender_date_to_ymd     ${value}

Отримати інформацію із лоту про decisions[${n}].decisionID
  Run Keyword And Return    Get Text    id=decisionID${n}

Отримати інформацію із лоту про dateModified
  ${value}=     Get Text    id=lotDate
  Run Keyword And Return    convert_etender_date_to_iso_format  ${value}

Отримати інформацію з активу лоту
  [Arguments]  ${username}  ${tender_uaid}  ${item}  ${fieldname}
  Run Keyword And Return  Отримати інформацію з активу лоту про ${fieldname}  ${item}

Отримати інформацію з активу лоту про description
  [Arguments]  ${item}
  Run Keyword And Return    Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='description']

Отримати інформацію з активу лоту про classification.scheme
  [Arguments]  ${item}
  Run Keyword And Return    Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='classification.scheme']

Отримати інформацію з активу лоту про classification.id
  [Arguments]  ${item}
  Run Keyword And Return    Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='classification.id']

Отримати інформацію з активу лоту про unit.name
  [Arguments]  ${item}
  ${value}=     Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='unit.name']
  Run Keyword And Return    convert_etender_string_to_common_string     ${value}

Отримати інформацію з активу лоту про registrationDetails.status
  [Arguments]  ${item}
  ${value}=     Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='registrationStatus']
  Run Keyword And Return    convert_etender_string_to_common_string     ${value}

Отримати інформацію з активу лоту про quantity
  [Arguments]  ${item}
  ${value}=     Get Text    xpath=//div[contains(@name, '${item}')]//*[@name='quantity']
  Run Keyword And Return    Convert To Number   ${value}

Розділити дату та заповнити поля
  [Arguments]  ${date}
  ${startDate}  ${startTime}=     get_etender_date_from_iso   ${date}
  Wait and Input    id=auctionPeriodStart  ${startDate}
  Input String      id=auctionPeriodTime    ${startTime}

Внести зміни в лот
  [Arguments]  ${username}  ${tender_uaid}  ${fieldname}  ${fieldvalue}
  etender.Пошук лоту по ідентифікатору  ${username}  ${tender_uaid}
  Wait and Click  id=EditLot
  Wait and Input  ${locator.${fieldname}}     ${fieldvalue}
  Зберегти зміни
  Дочекатись зникнення blockUI

Внести зміни в актив лоту
  [Arguments]  ${username}  ${item_id}  ${tender_uaid}  ${fieldname}  ${fieldvalue}
  etender.Пошук лоту по ідентифікатору  ${username}  ${tender_uaid}
  Wait and Click    id=EditLot
  Input String      ${locator_item_${fieldname}.replace('item_id','${item_id}')}     ${fieldvalue}
  Зберегти зміни
  Дочекатись зникнення blockUI

Завантажити ілюстрацію в лот
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}
  etender.Завантажити документ в лот з типом    ${username}  ${tender_uaid}  ${filepath}  illustration

Завантажити документ в лот з типом
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}  ${documentType}
  ${documentType}=  get_lot_document_name  ${documentType}
  Wait and Select By Label  id=docType  ${documentType}
  Choose File     xpath=//input[@id="tend_doc_add"]  ${filepath}
  Sleep  15

Завантажити документ для видалення лоту
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}
  etender.Завантажити документ в лот з типом    ${username}  ${tender_uaid}  ${filepath}  cancellationDetails
  Sleep  45

Видалити лот
  [Arguments]  ${username}  ${tender_uaid}
  etender.Пошук лоту по ідентифікатору  ${username}  ${tender_uaid}
  Click Element     id=DeleteLot
  Sleep  30

Додати умови проведення аукціону
  [Arguments]  ${username}  ${auction}  ${auction_index}  ${tender_uaid}
  Run Keyword   Додати умови проведення аукціону номер ${auction_index}     ${username}  ${tender_uaid}  ${auction}

Додати умови проведення аукціону номер 0
  [Arguments]  ${username}  ${lot_uaid}  ${auction}
  etender.Пошук лоту по ідентифікатору  ${username}  ${lot_uaid}
  Log  ${auction}
  Wait and Click    id=editAuction_0
  Розділити дату та заповнити поля  ${auction.auctionPeriod.startDate}
  Input String      id=Value                ${auction.value.amount}
  Input String      id=minimalStep          ${auction.minimalStep.amount}
  Input String      id=Guarantee            ${auction.guarantee.amount}
  Input String      id=RegistrationFee      ${auction.registrationFee.amount}
  Input Text        id=accountDetailsBankName   ${auction.bankAccount.bankName}
  Input Text        id=accountDetailsDescription    ${auction.bankAccount.description}
  Select From List By Label     id=accountDetailsScheme     ${auction.bankAccount.accountIdentification[0].scheme}
  Input String      id=accountDetailsCode0  ${auction.bankAccount.accountIdentification[0].id}
  Зберегти зміни
  Sleep  30

Додати умови проведення аукціону номер 1
  [Arguments]  ${username}  ${lot_uaid}  ${auction}
  etender.Пошук лоту по ідентифікатору  ${username}  ${lot_uaid}
  Log  ${auction}
  Wait and Click    id=editAuction_1
  ${duration}=  convert_iso8601Duration  ${auction.tenderingDuration}
  Wait and Input    id=TenderingDuration  ${duration}
  Зберегти зміни
  Sleep  30
  Click Element     id=ActivateLot
  Sleep  0.5
  Page Should Not Contain  Інформаційне повідомлення не пройшло перевірку

Внести зміни в умови проведення аукціону
  [Arguments]  ${username}  ${tender_uaid}  ${fieldname}  ${fieldvalue}  ${auction_index}
  etender.Пошук лоту по ідентифікатору  ${username}  ${tender_uaid}
  Wait and Click    id=goToAuction_${auction_index}
  Wait and Click    id=EditAuction
  Run Keyword If  '${fieldname}'=='auctionPeriod.startDate'  Розділити дату та заповнити поля  ${fieldvalue}
  Run Keyword And Return If  '${fieldname}'=='auctionPeriod.startDate'  Зберегти зміни
  Clear Element Text    ${locator_auction_${fieldname.replace('.','_')}}
  Input String      ${locator_auction_${fieldname.replace('.','_')}}  ${fieldvalue}
  Зберегти зміни

Завантажити документ в умови проведення аукціону
  [Arguments]  ${username}  ${tender_uaid}  ${filepath}  ${documentType}  ${auction_index}
  etender.Пошук лоту по ідентифікатору  ${username}  ${tender_uaid}
  Wait and Click    id=goToAuction_${auction_index}
  ${documentType}=  get_lot_document_name  ${documentType}
  Wait and Select By Label  id=docType  ${documentType}
  Choose File     xpath=//input[@id="tend_doc_add"]  ${filepath}
  Sleep  15

Отримати інформацію із лоту про auctions[${n}].procurementMethodType
  ${type}=   Wait and Get Text    id=auctionType_${n}
  ${procurementMethodType}    convert_etender_string_to_common_string     ${type}
  [Return]  ${procurementMethodType}

Отримати інформацію із лоту про auctions[${n}].status
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${status}=    Wait and Get Attribute   id=auctionStatus  status
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${status}

Отримати інформацію із лоту про auctions[${n}].tenderAttempts
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${tenderAttempts}=    Wait and Get Attribute   id=auctionStatus  tenderAttempts
  ${tenderAttempts}=    Convert To Integer      ${tenderAttempts}
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${tenderAttempts}

Отримати інформацію із лоту про auctions[${n}].value.amount
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${value.amount}=  Wait and Get Text    id=value
  ${value.amount}=  Convert To Number   ${value.amount}
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${value.amount}

Отримати інформацію із лоту про auctions[${n}].minimalStep.amount
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${minimalStep.amount}=    Wait and Get Text    id=minimalStep
  ${minimalStep.amount}=    Convert To Number   ${minimalStep.amount}
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${minimalStep.amount}

Отримати інформацію із лоту про auctions[${n}].guarantee.amount
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${guarantee.amount}=      Wait and Get Text    id=guarantee
  ${guarantee.amount}=      Convert To Number   ${guarantee.amount}
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${guarantee.amount}

Отримати інформацію із лоту про auctions[${n}].registrationFee.amount
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${registrationFee.amount}=    Wait and Get Text    id=registrationFee
  ${registrationFee.amount}=    Convert To Number   ${registrationFee.amount}
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${registrationFee.amount}

Отримати інформацію із лоту про auctions[${n}].tenderingDuration
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${tenderingDuration}=    Wait and Get Text    id=tenderingDuration
  Go Back
  Дочекатись зникнення blockUI
  ${duration}=  Set Variable If  '${tenderingDuration}'=='30'   P1M  P${tenderingDuration}D
  [Return]  ${duration}

Отримати інформацію із лоту про auctions[${n}].auctionPeriod.startDate
  Перейти на сторінку лота за потреби
  Wait and Click  id=goToAuction_${n}
  ${auctionPeriod.startDate}=    Wait and Get Text    id=auctionStart
  ${auctionPeriod.startDate}=    convert_etender_date_to_iso_format   ${auctionPeriod.startDate}
  Go Back
  Дочекатись зникнення blockUI
  [Return]  ${auctionPeriod.startDate}

Обрати класифікатор
  [Arguments]  ${id}  ${index}
  Wait and Click  xpath=(//input[@id='openMPC'])[${index+1}]
  Дочекатись зникнення blockUI
  Execute JavaScript  element = document.evaluate("//input[contains(@ng-model, 'searchstring')]",document.documentElement,null,XPathResult.ORDERED_NODE_SNAPSHOT_TYPE,null).snapshotItem(0);
  Execute JavaScript  element.value = '${id}';
  Execute JavaScript  angular.element(element).triggerHandler('change');
  Дочекатись зникнення blockUI
  Wait and Click    xpath=//td[contains(@code, '${id}')]
  Wait and Click    id=classification_choose
  Дочекатись зникнення blockUI

Отримати документ
  [Arguments]  ${username}  ${tender_uaid}  ${doc_id}
  Switch browser   ${username}
  ${title}=  etender.Отримати інформацію із документа  ${username}  ${tender_uaid}  ${doc_id}  title
  log  ${title}
  ${prepared_locator}=  Set Variable  ${locator_document_href.replace('XX_doc_id_XX','${doc_id}')}
  log  ${prepared_locator}
  ${href}=  Get Element Attribute  ${prepared_locator}
  ${document_file}=  download_file_from_url  ${href}  ${OUTPUT_DIR}${/}${title}
  [return]  ${document_file}

Отримати інформацію із документа
  [Arguments]  ${username}  ${tender_uaid}  ${doc_id}  ${field}
  Switch browser   ${username}
  ${prepared_locator}=  Set Variable  ${locator_document_${field}.replace('XX_doc_id_XX','${doc_id}')}
  log  ${prepared_locator}
  ${raw_value}=   Wait and Get Text  ${prepared_locator}
  Run Keyword And Return  Конвертувати інформацію із документа про ${field}  ${raw_value}

Конвертувати інформацію із документа про title
  [Arguments]  ${raw_value}
  ${return_value}=  Set Variable  ${raw_value.split(',')[0]}
  [return]  ${return_value}