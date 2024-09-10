<App>
  <Include src="./functions.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="text2" value="##### Accounts Table" verticalAlign="center" />
    <Text id="text3" value="##### Users Table" verticalAlign="center" />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAccounts.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="30b48"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={125.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="b279e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={140.109375}
        summaryAggregationMode="none"
      />
      <Column
        id="feb49"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={204.234375}
        summaryAggregationMode="none"
      />
      <Column
        id="909dd"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="signup_date"
        label="Signup date"
        placeholder="Enter value"
        position="center"
        size={152.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="b313a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={76.25}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="69cb0"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={62.875}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getUsers.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="3714f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={141.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="ec273"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={92.671875}
        summaryAggregationMode="none"
      />
      <Column
        id="c1b7a"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={195.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="40249"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="signup_date"
        label="Signup date"
        placeholder="Enter value"
        position="center"
        size={140.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="ae919"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="account_id"
        label="Account ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Add Record" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="full_name"
          label="Full Name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="role"
          data="{{ getRoles.data }}"
          emptyMessage="No options"
          label="Role"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <TextInput
          id="email"
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          labelPosition="top"
          patternType="email"
          placeholder="you@example.com"
        />
        <DateTime
          id="signup_date"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="signup_date"
          iconBefore="bold/interface-calendar"
          label="Signup date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <Checkbox
          id="enabled"
          formDataKey="enabled"
          label="Enabled"
          labelWidth="100"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createAccount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Text
      id="text1"
      value="##### Data from Transformer"
      verticalAlign="center"
    />
    <JSONEditor
      id="jsonEditor1"
      value="{{ getLatestAccountRecord.value }}
"
    />
    <Button id="button1" text="Button" />
  </Frame>
</App>
