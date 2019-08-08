Industry.delete_all
industry1 = Industry.create( name: 'Telecom' )
industry2 = Industry.create( name: 'IT' )

Period.delete_all
Period.create([
  { year: 2018 },
  { year: 2017 },
])

Standard.delete_all
Standard.create([
  { name: 'IFRS' },
  { name: 'US GAAP' },
  { name: 'Other' }
])

Currency.delete_all
Currency.create([
  { name: 'USD' },
  { name: 'RUB' }
])

Indicator.delete_all
Indicator.create([
  { name: 'Revenues' },
  { name: 'Net income' },
  { name: 'Debt' }
])

Company.delete_all
Company.create( name: 'MTS', industry_id: industry1.id )
Company.create( name: 'Yandex', industry_id: industry2.id )
