Candidates.CompanyName = 'sofinnovas';
system.debug('start count candidates => ' + Candidates.countCandidates);
Candidates c1 = new Candidates();
Candidates.countCandidates++;

c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidates();

system.debug(' -------------');

Candidates c2 = new Candidates();
Candidates.countCandidates++;
c2.Name = 'Elaine';
c2.Gender = 'Female';
c2.printCandidates();

system.debug(' -------------');

Candidates.CompanyName = 'Vandelay Industries';

Candidates c3 = new Candidates();
Candidates.countCandidates++;
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidates();

system.debug(' -------------');
c1.printCandidates();
system.debug(' -------------');
c2.printCandidates();

Candidates.printCandidateInfo();

system.debug('start count candidates => ' + Candidates.countCandidates);