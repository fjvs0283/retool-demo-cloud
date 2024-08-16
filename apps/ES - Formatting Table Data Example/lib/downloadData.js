const data = formatData.value;

function arrayToCSVString(array) {
  const headers = Object.keys(array[0]);
  const csvString = [
    headers.join(","),
    ...array.map((row) =>
      headers
        .map((header) => {
          const cell = row[header];
          if (cell && (cell.includes(",") || cell.includes("\n") || cell.includes('"'))) {
            return `"${cell.replace(/"/g, '""')}"`;
          }
          return cell;
        })
        .join(",")
    ),
  ].join("\n");
  return csvString;
}

function downloadCSVFile(csvString) {
  utils.downloadFile(csvString, "data-export", "csv");
}

const csvString = arrayToCSVString(data);
downloadCSVFile(csvString);
return csvString;