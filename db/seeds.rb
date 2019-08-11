Value.delete_all
Report.delete_all
Company.delete_all
Period.delete_all
Standard.delete_all
Currency.delete_all
Indicator.delete_all

period1 = Period.create( year: 2018 )
period2 = Period.create( year: 2017 )

standard1 = Standard.create( name: 'IFRS' )
standard2 = Standard.create( name: 'US GAAP' )
standard2 = Standard.create( name: 'Other' )

currency = []
%w(USD EUR JPY GBP AUD CAD CHF CNH SEK NZD RUB).sort.each do |code|
  currency << Currency.create( name: code )
end

indicator1 = Indicator.create( name: 'Revenues' )
indicator2 = Indicator.create( name: 'Operating income' )
indicator3 = Indicator.create( name: 'Net income' )
indicator4 = Indicator.create( name: 'Debt' )

company1 = Company.create( name: 'MTS' )
company2 = Company.create( name: 'Yandex' )

report1 = Report.create( company_id: company1.id, period_id: period1.id, standard_id: standard1.id, currency_id: currency[0].id )
report2 = Report.create( company_id: company2.id, period_id: period2.id, standard_id: standard2.id, currency_id: currency[1].id )

Value.create( report_id: report1.id, indicator_id: indicator1.id, value: 1_000_000 )
Value.create( report_id: report1.id, indicator_id: indicator2.id, value: 700_000 )
Value.create( report_id: report1.id, indicator_id: indicator3.id, value: 500_000 )
Value.create( report_id: report1.id, indicator_id: indicator4.id, value: 900_000 )

Value.create( report_id: report2.id, indicator_id: indicator1.id, value: 1_500_000 )
Value.create( report_id: report2.id, indicator_id: indicator2.id, value: 1_000_000 )
Value.create( report_id: report2.id, indicator_id: indicator3.id, value: 600_000 )
Value.create( report_id: report2.id, indicator_id: indicator4.id, value: 1_200_000 )
