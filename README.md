# Emerging-Technologies
Assignments Details:
1.	Creating and demonstrating as a group, answering questions on the spot
  a.	Setting up a working infrastructure for Bitcoin and demonstrating its use.
  b.	Setting up a working infrastructure for Ethereum and demonstrating its use.
2.	Writing a Smart Contract in Ethereum using the language Solidity, demonstrating its use on the network from assignment 1b and explaining how it works
3.	Setting up a working infrastructure for another cryptocurrency chosen by the student himself (herself). Writing a report on this explaining choices and the implementation itself.
4.	Analyzing the source code of Ethereum in order to determine where to change something to achieve some goal. Writing a report on this.
5.	Demonstrating components 1a, 1b, 2 and 3 and answering some questions on it (the assessment.)

6.2 Demonstrating the infrastructures and the Solidity code
The infrastructures of components 1a and 1b have to be set up by the students as a group before the assessment (component 5) starts. The infrastructure of component 3 has to be set up by the student individually before the assessment. The Solidity code of component 2 has to be on the infrastructure of component 1b before the assessment starts.

6.3 Assessment
The assessment is individual. The student demonstrates the infrastructures 1a, 1b and 3 and shows the working of the Contract from component 2. No separate grade is given for this assessment, it is mandatory for the other grades to be given.

6.4 Development paper
The development paper is on changing some part of the Ethereum code. For this paper, the student needs to take the following steps:
  1.	Find and read scientific papers on the technology in order to understand the architecture, uses and possible implementations. Use between 2 and 4 papers in this step.
  2.	Analyze the source code in order to understand the specific architecture and implementation
  3.	Find and read scientific papers on the technology in order to understand the parts that can be changed, improved or tweaked. Use between 2 and 4 papers in this step; overlap with step 1 is allowed, leading to at least 3 papers in the final report.
  4.	Identify something the student deems worthwhile to change. This step depends on the ideas of the student; it can be a functional enhancement, repairing a known weakness or changing something to make it useful in a different situation.

Write a paper on the previous steps. This report needs to include:
  a.	Description of the technology:
   i.	First focusing on what it is, what use is it, how mature is it. Here you show why the technology is useful (in what area, for what problem or for what organization) and why it has passed the phase of being a new hype and entered the phase of a technology which might grow to become important.
    ii.	Followed by a technical point of view in sufficient detail for the steps following to be understandable by a non-specialist.
   b.	Description of problems or areas up for improvement
  c.	Identification of the problem or area chosen with explanation as to why this one.
  d.	Description of solution implemented, supported by diagrams and/ or drawings.
  e.	Reference list to scientific papers used to research and support a to d.

Assessment criteria

When grading, the following items will be checked for presence and correctness:
•	Report is structured correctly, can be understood by a non-specialist and contains all necessary data.
•	Technology description shows both understanding of the use and maturity and hardcore technological insight.
•	Problem or area to change is clearly identified, is non-trivial to implement and non-trivial in its effects.
•	Literature used of sufficient level and supports the previous bullet points.

The first bullet is mandatory to have the paper graded. Having one other bullet gives a 1. Having two other bullets gives a 4, having three gives a 7, having all bullets gives a 10.


 
6.5 Other cryptocurrency paper
The second paper is on a cryptocurrency to be chosen by the student (Bitcoin and Ethereum being excluded, as they have been covered in other items. Any cryptocurrency can be chosen, as long as it can be bought and sold (so excluding ‘dead’ currencies) and the currency can be mined (so excluding for example Ripple.) 

The student:
1.	Describes the technology, giving special attention to pointing out what makes this blockchain implementation special (different from others, unique selling point.)
2.	Explains why he (she) chose this specific implementation, underpinning it not only with personal interest, but also with relevant social and economic aspects.
3.	Describes in detail how the infrastructure was set up in order to work. This includes both a client (for example a wallet) and a miner. A CPU miner, while practically speaking unsuitable, is acceptable for this course.
4.	Gives references to websites and literature used to setup the infrastructure and write this paper.

Assessment criteria

When grading, the following items will be checked for presence and correctness:
•	Report is structured correctly (readability) and can be understood by a non-specialist. References to literature and / or websites are present and correct.
•	Technology description shows both understanding of the technology and of the points making it unique.
•	Paper makes clear why the student finds this technology interesting and worth examining in more detail. 
o	Social and economic aspects have been taken into account.
•	Report describes setting up the infrastructure in sufficient detail that a non-technical user could repeat the steps and finish with a working setup.

The first main bullet is mandatory to have the paper graded. Having one other bullet gives a 4, two bullets give a 7, and three give a 9. Having all bullets while also covering the sub-bullet gives a 10. 
 
7 Example of a development paper
In order to clarify how a development paper could be created, one example is given. The student will write a paper for Ethereum. First the steps to take:
  1.	The article of Buterin (2012) gives a good overview of Ethereum and the ideas behind it. It refers to Bitcoin, which gives another article to understand the difference. A third article is on Proof of Stake.
  2.	Download the java version of Ethereum from GitHub. Import it as a Gradle project in Eclipse. See that it fails with some weird error message. Research what it means. Install Git for bash and import again.
    a.	Play with it and run a private blockchain. Download a GUI to make using it easier. Write a very small smart contract to see how that works.
    b.	Examine the code. Draw some diagrams. Change the maximum size of the blocks in your private chain and see what that does.
    c.	Write an encryption based on Ceasar substitution. Change the encryption of Ethereum to use this new one. Run it to see the functionality is still there.
  3.	Find some more papers. One describes the cryptography, another is a paper on Proof of Excellence. There’s also papers around describing Proof of Burn, or Witnessing. Take your pick.
  4.	Current cryptography might break with quantum computing, an idea leading you to implement two new security protocols. Proof of Excellence could be a nice added option to add desirable functionality. 
  5.	Choosing the first one, you find a paper on stronger encryption than PPKI, read it and design a class implementing it, giving the algorithm in pseudocode. Or choosing the second one, design an algorithm doing this, showing it as a diagram.
  6.	The report will describe Ethereum, its origin, usage, maturity, principles and the architecture. Refer to sources. You describe both options for improvement (security and PoE.) You pick one and describe why you think this one is the best to tackle. Refer to both papers found and maybe the Boston Consultancy Matrix to support why you chose this and not the other.
  7.	Give reference list.




https://remix.ethereum.org./#optimize=false&version=soljson-v0.4.23+commit.124ca40d.js
