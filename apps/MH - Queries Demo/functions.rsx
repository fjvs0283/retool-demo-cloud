<GlobalFunctions>
  <SqlQueryUnified
    id="createAccount"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ form1.data }}"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/createAccount.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="ebdca189-b862-4a20-b4b2-7094b28164c3"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="sample_users"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="createUser"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "First Record Added to DB" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="createUser"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/createUser.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="ebdca189-b862-4a20-b4b2-7094b28164c3"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "Next Record Added to DB" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function
    id="getLatestAccountRecord"
    funcBody={include("./lib/getLatestAccountRecord.js", "string")}
  />
  <JavascriptQuery
    id="getRoles"
    query={include("./lib/getRoles.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
  />
  <SqlQueryUnified
    id="getUsers"
    enableTransformer={true}
    query={include("./lib/getUsers.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="ebdca189-b862-4a20-b4b2-7094b28164c3"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data);"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getAccounts"
    enableTransformer={true}
    query={include("./lib/getAccounts.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="ebdca189-b862-4a20-b4b2-7094b28164c3"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data);"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="createUser2"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/createUser2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="ebdca189-b862-4a20-b4b2-7094b28164c3"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "Next Record Added to DB" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
