<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getData.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7e4cb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="lastName"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={130}
        summaryAggregationMode="none"
      />
      <Column
        id="b7f23"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="firstName"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={156}
        summaryAggregationMode="none"
      />
      <Column
        id="2b6cf"
        alignment="left"
        editable={false}
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={234.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="aae33"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="team"
        label="Team"
        placeholder="Enter value"
        position="center"
        size={216.609375}
        summaryAggregationMode="none"
      />
      <Column
        id="4c11c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="role"
        label="Role"
        placeholder="Enter value"
        position="center"
        size={184.3125}
        summaryAggregationMode="none"
      />
      <Column
        id="4ace5"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="dateJoined"
        label="Date joined"
        placeholder="Enter value"
        position="center"
        size={92.890625}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
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
      <Event
        event="changeFilter"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getDisplayedData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Button id="button1" text="Export to CSV">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="downloadData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <JSONEditor id="jsonEditor1" value="{{ formatData.value }}" />
  </Frame>
</App>
