/**
 *
 * @author: Mateus Santos - TOPi
 */
@isTest
public class AccountFixtureFactory {

    public static Account newAccount ( String name ) {
        return newAccount ( name,  UserInfo.getUserId() );
    }
    
    public static Account createAccount ( String name ) {
        return createAccount ( newAccount ( name ) );
    }
    
    public static Account newAccount ( String name,  String ownerId ) {
        return new Account ( Name = name,
                             OwnerId = ownerId ); 
    }
    
    public static Account createAccount ( String name, String ownerId ) {
        return createAccount ( newAccount ( name, ownerId ) );
    }
    
    public static Account createAccount ( Account entity ) {
        insert entity;
        return entity;
    }
    
    public static Map<String, SObject> integratedData () {
        Map<String, SObject> records = new Map<String, SObject>();
        
        String userId = UserInfo.getUserId();
        
        records.put ( 'account',  createAccount ( 'Factory', userId ) );
        
        return records;
    }
    
    public static String defaultAccountJson() {
        return '{"attributes":{"type":"Account"},"Name":"TOPI INFORMATION","Owner":{"attributes":{"type":"User","url":"/services/data/v50.0/sobjects/User/0050m000003RnjKAAS"},"Id":"0050m000003RnjKAAS","Email":"mateus.santos@topi.io"},"RazaoSocial__c":"TOPI INFORMATION LTDA","CNPJ__c":"44993182000114","Status__c":null,"Parent":null,"CNAE__c":null,"Phone":"1199999999","Email__c":"topi@topi.io","TipoMatrizFilial__c":"Filial","AccountSource":null,"Website":null,"Campanha__c":null,"FaturamentoPresumido__c":null,"BillingStreet":"Av. Paulista, 4000","BillingState":"SP","BillingCity":"São Paulo","BillingPostalCode":"09111441","Complemento__c":null,"ExibirBusca__c":false,"ExibirMapa__c":false,"TPVMesAnterior__c":null,"TPVMesAtual__c":null,"TPVQuarterAtual__c":null,"DataPrimeiraTransacao__c":null,"DataUltimaTransacao__c":null,"TicketMedioMesAtual__c":null,"TicketMedioMesAnterior__c":null,"TicketMedioQuarterAtual__c":null,"FrenteCaixa__c":null,"SegmentoCliente__c":null,"SistemaPagamento__c":null,"RamoAtividade__c":null,"GrupoEconomico__c":null,"AssociacaoComercial__c":null}';
    }

    public static String defaultAccountTransactionsJson() {
        return '[{"attributes":{"type":"Account"},"CNPJ__c":"23231949199195","ValorTotalTransacaoMesAtual__c":12.00,"QuantidadeTransacaoMesAtual__c":12.00,"TicketMedioMesAtual__c":12.00,"ReceitaParceladaMesAtual__c":12.00,"ReceitaAVistaMesAtual__c":12.00,"ValorCashbackMesAtual__c":12.00,"CustoInternoTotalMesAtual__c":12.00,"QuantidadeUsuariosTransacionandoMesAtual__c":12.00,"QuantidadeNovosUsuariosMesAtual__c":12.00,"ValorTotalTransacaoM1__c":1.0,"ValorTotalTransacaoM2__c":2.0,"ValorTotalTransacaoM3__c":3.0,"ValorTotalTransacaoM4__c":4.0,"ValorTotalTransacaoM5__c":5.0,"ValorTotalTransacaoM6__c":6.0,"ValorTotalTransacaoM7__c":7.0,"ValorTotalTransacaoM8__c":8.0,"ValorTotalTransacaoM9__c":9.0,"ValorTotalTransacaoM10__c":10.0,"ValorTotalTransacaoM11__c":11.0,"ValorTotalTransacaoM12__c":12.0,"QuantidadeTransacaoM1__c":1.0,"QuantidadeTransacaoM2__c":2.0,"QuantidadeTransacaoM3__c":3.0,"QuantidadeTransacaoM4__c":4.0,"QuantidadeTransacaoM5__c":5.0,"QuantidadeTransacaoM6__c":6.0,"QuantidadeTransacaoM7__c":7.0,"QuantidadeTransacaoM8__c":8.0,"QuantidadeTransacaoM9__c":9.0,"QuantidadeTransacaoM10__c":10.0,"QuantidadeTransacaoM11__c":11.0,"QuantidadeTransacaoM12__c":12.0,"TicketMedioM1__c":1.0,"TicketMedioM2__c":2.0,"TicketMedioM3__c":3.0,"TicketMedioM4__c":4.0,"TicketMedioM5__c":5.0,"TicketMedioM6__c":6.0,"TicketMedioM7__c":7.0,"TicketMedioM8__c":8.0,"TicketMedioM9__c":9.0,"TicketMedioM10__c":10.0,"TicketMedioM11__c":11.0,"TicketMedioM12__c":12.0,"ReceitaParceladaM1__c":1.0,"ReceitaParceladaM2__c":2.0,"ReceitaParceladaM3__c":3.0,"ReceitaParceladaM4__c":4.0,"ReceitaParceladaM5__c":5.0,"ReceitaParceladaM6__c":6.0,"ReceitaParceladaM7__c":7.0,"ReceitaParceladaM8__c":8.0,"ReceitaParceladaM9__c":9.0,"ReceitaParceladaM10__c":10.0,"ReceitaParceladaM11__c":11.0,"ReceitaParceladaM12__c":12.0,"ReceitaAVistaM1__c":1.0,"ReceitaAVistaM2__c":2.0,"ReceitaAVistaM3__c":3.0,"ReceitaAVistaM4__c":4.0,"ReceitaAVistaM5__c":5.0,"ReceitaAVistaM6__c":6.0,"ReceitaAVistaM7__c":7.0,"ReceitaAVistaM8__c":8.0,"ReceitaAVistaM9__c":9.0,"ReceitaAVistaM10__c":10.0,"ReceitaAVistaM11__c":11.0,"ReceitaAVistaM12__c":12.0,"ValorCashbackM1__c":1.0,"ValorCashbackM2__c":2.0,"ValorCashbackM3__c":3.0,"ValorCashbackM4__c":4.0,"ValorCashbackM5__c":5.0,"ValorCashbackM6__c":6.0,"ValorCashbackM7__c":7.0,"ValorCashbackM8__c":8.0,"ValorCashbackM9__c":9.0,"ValorCashbackM10__c":10.0,"ValorCashbackM11__c":11.0,"ValorCashbackM12__c":12.0,"CustoInternoTotalM1__c":1.0,"CustoInternoTotalM2__c":2.0,"CustoInternoTotalM3__c":3.0,"CustoInternoTotalM4__c":4.0,"CustoInternoTotalM5__c":5.0,"CustoInternoTotalM6__c":6.0,"CustoInternoTotalM7__c":7.0,"CustoInternoTotalM8__c":8.0,"CustoInternoTotalM9__c":9.0,"CustoInternoTotalM10__c":10.0,"CustoInternoTotalM11__c":11.0,"CustoInternoTotalM12__c":12.0,"QuantidadeUsuariosTransacionandoM1__c":1.0,"QuantidadeUsuariosTransacionandoM2__c":2.0,"QuantidadeUsuariosTransacionandoM3__c":3.0,"QuantidadeUsuariosTransacionandoM4__c":4.0,"QuantidadeUsuariosTransacionandoM5__c":5.0,"QuantidadeUsuariosTransacionandoM6__c":6.0,"QuantidadeUsuariosTransacionandoM7__c":7.0,"QuantidadeUsuariosTransacionandoM8__c":8.0,"QuantidadeUsuariosTransacionandoM9__c":9.0,"QuantidadeUsuariosTransacionandoM10__c":10.0,"QuantidadeUsuariosTransacionandoM11__c":11.0,"QuantidadeUsuariosTransacionandoM12__c":12.0,"QuantidadeNovosUsuariosM1__c":1.0,"QuantidadeNovosUsuariosM2__c":2.0,"QuantidadeNovosUsuariosM3__c":3.0,"QuantidadeNovosUsuariosM4__c":4.0,"QuantidadeNovosUsuariosM5__c":5.0,"QuantidadeNovosUsuariosM10__c":10.0,"QuantidadeNovosUsuariosM11__c":11.0,"QuantidadeNovosUsuariosM12__c":12.0}]';
    }
}