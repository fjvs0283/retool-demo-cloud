<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Table
        id="table1"
        cellSelection="none"
        clearChangesetOnSave={true}
        data="{{ get_data_01.data }}"
        defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
        emptyMessage="No rows found"
        enableSaveActions={true}
        primaryKeyColumnId="26281"
        rowHeight="medium"
        showBorder={true}
        showFooter={true}
        showHeader={true}
        toolbarPosition="bottom"
      >
        <Column
          id="26281"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="id"
          label="ID"
          placeholder="Enter value"
          position="center"
          size={100}
          summaryAggregationMode="none"
        />
        <Column
          id="07b76"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="name"
          label="Name"
          placeholder="Enter value"
          position="center"
          size={99.453125}
          summaryAggregationMode="none"
        />
        <Column
          id="7e3c5"
          alignment="left"
          caption="{{ currentSourceRow.email }}"
          editable="false"
          format="email"
          groupAggregationMode="none"
          key="email"
          label="Email"
          placeholder="No user"
          position="center"
          referenceId="email"
          size={183.609375}
          summaryAggregationMode="none"
          valueOverride="{{ currentSourceRow.firstName }} {{ currentSourceRow.lastName }}"
        />
        <Column
          id="6c67a"
          alignment="left"
          format="datetime"
          groupAggregationMode="none"
          key="start_date"
          label="Start date"
          placeholder="Enter value"
          position="center"
          size={155.265625}
          summaryAggregationMode="none"
        />
        <Column
          id="43f87"
          alignment="left"
          format="datetime"
          groupAggregationMode="none"
          key="end_date"
          label="End date"
          placeholder="Enter value"
          position="center"
          size={154.765625}
          summaryAggregationMode="none"
        />
        <Column
          id="9df47"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="team"
          label="Team"
          placeholder="Enter value"
          position="center"
          size={83}
          summaryAggregationMode="none"
        />
        <Column
          id="05d53"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="location"
          label="Location"
          placeholder="Select option"
          position="center"
          size={111.71875}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
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
    </ModuleContainerWidget>
  </Frame>
</App>
