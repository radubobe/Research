from learning_algorithm import LearningAutomata
from ComputeUtil import ComputeUtil
alphabet = ['a', 'b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r']
language = ['abbcd','bcbd','efgid','lebmnid','pqd','kod','rad','hid','jcbd']
maximumLength = max(list(map(lambda a: len(a), language)))
learningAutomata = LearningAutomata(alphabet, language, 7)

learningAutomata.compute()
Q, F, table = learningAutomata.buildAutomaton()
print("Q:",Q)
print("F:",F)
print("Table: ",table)
s_set = learningAutomata.s_set
w_set = learningAutomata.w_set
observation_table = learningAutomata.get_table(s_set, w_set)
print("Observation table: ", observation_table)
new_s_set = ComputeUtil.compute_s_set(s_set, observation_table)
print("Print new_s_set:",new_s_set)
observation_table_new_s_set = learningAutomata.get_table(new_s_set, w_set)
print("Print observation table new_s_set:",observation_table_new_s_set)
new_w_set = ComputeUtil.compute_w_set(w_set, observation_table_new_s_set)
print("Print new_w_set:",new_w_set)
u_set = ComputeUtil.compute_u_set_with_letters(s_set=new_s_set, alphabet=alphabet, w_set=new_w_set)
u_set = list(filter(lambda a: len(a) <= maximumLength, u_set))
u_set_sort = sorted(u_set, key=lambda a: (len(a), a))
u_set_sort.remove('')
print("Print u_set:", u_set)
