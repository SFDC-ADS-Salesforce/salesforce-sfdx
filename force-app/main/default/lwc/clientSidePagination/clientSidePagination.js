import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/PaginationDemoController.getContacts';
const COLUMNS = [
    { label: 'Name', fieldName: 'Name' },
    { label: 'Email', fieldName: 'Email' },
    { label: 'Phone', fieldName: 'Phone' },
    { label: 'Department', fieldName: 'Department' },
]
export default class ClientSidePagination extends LightningElement {
    columns = COLUMNS;
    isLoading = true;
    records = [];

    // PROPRIEDADES DE PAGINAÇÃO
    pageSize = 10;
    pageNumber = 1;
    totalRecords = 0;
    enablePagination = true;

    get hasRecords() {
        return this.records.length > 0;
    }

    // PROPRIEDADE DE PAGINAÇÃO - CALCULA E RETORNA OS REGISTROS A SEREM EXIBIDOS
    get recordsToDisplay() {
        let from = (this.pageNumber - 1) * this.pageSize,
            to = this.pageSize * this.pageNumber;
        return this.records?.slice(from, to);
    }

    // PROPRIEDADE DE PAGINAÇÃO - VERIFICA SE A PAGINAÇÃO PRECISA SER EXIBIDA OU NÃO
    get showPaginator() {
        return this.enablePagination && this.hasRecords;
    }

    @wire(getContacts)
    wiredGetContacts(result) {
        if (result?.data) {
            this.isLoading = false;
            this.records = result.data;
            this.totalRecords = this.records.length;
        }
        if (result?.error) {
            this.isLoading = false;
            console.log('Error which fetching data- ', result.error);
        }
    }

    // SERÁ CHAMADO AUTOMATICAMENTE PELO PAGINADOR QUANDO O NÚMERO DA PÁGINA OU O TAMANHO MUDAR
    paginationChangeHandler(event) {
        if (event.detail) {
            this.pageNumber = event.detail.pageNumber;
            this.pageSize = event.detail.pageSize;
        }
    }
}