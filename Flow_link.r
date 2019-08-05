#*****************************************
#
#Code for Hydraulic Analysis
#Getting flow at any link 
#  
#*****************************************



#input is a text file of type .inp, generated using EPANET by 
#expoerting a .net file
#ENopen gives as otput a report text file with the file extension .rpt
#.out file is a binary file which is taken as an input for water quality analysis

ENopen("BAK.inp","rep.rpt","test.out")

# serves as simpler way of running a hydraulic simulation

ENsolveH()

# gives the id of the link given its index, a complementary function
# exists

id <- ENgetlinkid(1)

# gets flow at the index of the given link

flow <- ENgetlinkvalue(1, "EN_FLOW")

#ENreport()
ENsaveH()

# report available as a text file after this

ENclose()
