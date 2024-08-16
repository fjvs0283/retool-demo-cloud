<GlobalFunctions>
  <JavascriptQuery
    id="getData"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getData.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getDisplayedData"
      type="datasource"
      waitMs="1000"
      waitType="debounce"
    />
  </JavascriptQuery>
  <Function
    id="formatData"
    funcBody={include("./lib/formatData.js", "string")}
  />
  <JavascriptQuery
    id="downloadData"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/downloadData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
  />
  <JavascriptQuery
    id="getDisplayedData"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/getDisplayedData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
  />
  <SqlQueryUnified
    id="query4"
    query={include("./lib/query4.sql", "string")}
    resourceDisplayName="Demo DB Resource"
    resourceName="c5ae2eee-6a69-4691-ae6e-7c5580fdc2c4"
    warningCodes={[]}
  />
</GlobalFunctions>
