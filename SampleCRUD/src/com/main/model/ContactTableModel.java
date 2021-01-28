package com.main.model;

import com.main.dto.ContactDTO;
import java.util.ArrayList;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

public class ContactTableModel implements TableModel { // view of table value

    private String[] columnName = {"ID", "FULL NAMEs","ADDRESS" ,"IS ACTIVE"};
    private Class[] columnClass = {String.class, String.class,String.class, String.class};
    ArrayList<ContactDTO> arrayList;

    public ContactTableModel(ArrayList<ContactDTO> arrayList) {
        this.arrayList = arrayList;
    }

    public int getRowCount() {
        return arrayList.size();
    }

    public int getColumnCount() {
        return columnName.length;
    }

    public String getColumnName(int columnIndex) {
        return columnName[columnIndex];
    }

    public Class<?> getColumnClass(int columnIndex) {
        return columnClass[columnIndex];
    }

    public boolean isCellEditable(int rowIndex, int columnIndex) {
        return false;
    }

    public Object getValueAt(int rowIndex, int columnIndex) {
        ContactDTO dTO = arrayList.get(rowIndex);
        switch (columnIndex) {
            case 0:
                return dTO.getId();
            case 1:
                return dTO.getFullName();
            case 2:
                return dTO.getAddress(); // data transfer object
            case 3:
                return dTO.getIsActive();
        }
        return null;
    }

    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {
    }

    public void addTableModelListener(TableModelListener l) {
    }

    public void removeTableModelListener(TableModelListener l) {
    }

    public ContactDTO getSelectedObject(int selectedRow) {
        return arrayList.get(selectedRow);
    }
}
