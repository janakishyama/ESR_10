# set file name want to process
file_name = '.\dataExport\LOGdata\log_2022_4_20.csv'

# Append a line to previous line if its not starting in standard format. 
# save the preprocessed data into same file
def del_newline(file_name):
    with open(file_name, 'r+', encoding="utf-8") as file:
        text = str();
        for line in file:
            if line[0:3] == "202":
                text = text + '\n';
            text = text + line.strip();
        file.seek(0);
        file.write(text);

del_newline(file_name)