import sys
import csv
from datetime import datetime

DELIMITER = ","
QUOTE_CHAR = '"'

OUT_COLUMNS = ["Resolved", "Created", "Issue Type", "Issue key", "Summary"]
DATE_COLUMNS = [0, 1]

def convertDate(date):
    return datetime.strptime(date, "%d.%m.%Y %H:%M").strftime("%m/%d/%Y");

with open(sys.argv[1]) as inputFile:
    outputFile = open(sys.argv[2], "w")
    csvReader = csv.reader(inputFile, delimiter=DELIMITER, quotechar=QUOTE_CHAR)
    headers = csvReader.next()
    indices = list(map(lambda column: headers.index(column), OUT_COLUMNS))

    for index, row in enumerate(csvReader):
        relevantCells = list(map(lambda index: row[index], indices))

        for columnIndex in DATE_COLUMNS:
            relevantCells[columnIndex] = convertDate(relevantCells[columnIndex])

        line = DELIMITER.join(relevantCells) + "\n"
        outputFile.write(line)

    outputFile.close()
