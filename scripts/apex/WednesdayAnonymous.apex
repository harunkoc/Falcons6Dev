List<opportunity> OppsAnnoualrevenue = [select id, name, account.annualRevenue from opportunity where account.annualRevenue > 5000 ];


Set<string> letters = new Set<string>{'a%', 'e%', 'i%'};
List<contact> contacts = [select id, name, lastname from contact where the lastname like: letters];

system.debug(contacts);

List<aggregateResult> oppstage = [select count(id), stageName from opportunity group by stagename];

system.debug(oppstage);

List<aggregateResult> maxAnnualrev = [select accountsource, max(annualrevenue) from account group by accountsource  ];

system.debug(maxannualrev);

