Report.delete_all
Company.delete_all
Industry.delete_all
Period.delete_all
Standard.delete_all
Currency.delete_all
Indicator.delete_all

industry1 = Industry.create( name: 'Telecom' )
industry2 = Industry.create( name: 'IT' )

period1 = Period.create( year: 2018 )
period2 = Period.create( year: 2017 )

standard1 = Standard.create( name: 'IFRS' )
standard2 = Standard.create( name: 'US GAAP' )

currency1 = Currency.create( name: 'RUB' )
currency2 = Currency.create( name: 'USD' )

Indicator.create([
  { name: 'Revenues' },
  { name: 'Net income' },
  { name: 'Debt' }
])

company1 = Company.create( name: 'MTS', industry_id: industry1.id )
company2 = Company.create( name: 'Yandex', industry_id: industry2.id )

Report.create( company_id: company1.id, period_id: period1.id, standard_id: standard1.id, currency_id: currency1.id )
Report.create( company_id: company2.id, period_id: period2.id, standard_id: standard2.id, currency_id: currency2.id )
