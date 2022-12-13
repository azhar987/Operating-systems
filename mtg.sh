#!/bin/bash
get_grade(FinalGrad):
    if [(FinalGrad -ge 90 and FinalGrad -le 100)]
        return echo "A+"
    elif [(FinalGrad -ge 86 and FinalGrad -le 90)]
        return echo "A"
    elif [(FinalGrad -ge 82 and FinalGrad -le 86)]
        return echo "A-"
    elif FinalGrad -ge 78 and FinalGrad -le 82:
        return echo "B+"
    elif FinalGrad -ge 74 and FinalGrad -le 78:
        return echo "B"
    elif FinalGrad -ge 70 and FinalGrad -le 74:
        return echo "B-"
    elif FinalGrad -ge 66 and FinalGrad -le 70:
        return echo "C+"
    elif FinalGrad -ge 62 and FinalGrad -le 66:
        return echo "C"
    elif FinalGrad -ge 58  and FinalGrad -le 62:
        return echo "C-"
    elif FinalGrad -ge 54 and FinalGrad -le 58:
        return echo "D+"
    elif FinalGrad -ge 50 and FinalGrad -le 54:
        return echo "D"
    else:
        return echo "F"
calculate_sgpa(grade1,grade2,grade3):
    total_marks=4.00
    total_number_of_subjects=0
    if [( grade1 -ne 0 )]
        total_number_of_subjects=$(($total_number_of_subjects + 1))
        total_marks =$(($total_marks+$calculate_sgpa(grade1)))
    fi
    if [( grade2 -ne 0 )]
        total_number_of_subjects=$(($total_number_of_subjects + 1))
        total_marks = (($total_marks+$variable(grade2)))
    fi
    if [( grade3 -ne 0)]
        total_number_of_subjects=$(($total_number_of_subjects + 1))
        total_marks = $(($total_marks + $variable(grade3)))
    fi
    if [(total_number_subjects -eq 0)]
        return 0
    fi
    sgpa = total_marks / total_number_of_subjects
    return $sgpa

