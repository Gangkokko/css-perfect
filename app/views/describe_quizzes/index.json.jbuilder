# frozen_string_literal: true

json.array! @describe_quizzes, partial: 'describe_quizzes/describe_quiz', as: :describe_quiz
