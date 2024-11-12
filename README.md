This repository includes a Git workflow that automates the process of checking for comments and enforcing linting rules on Dart code within the lib directory. Below is a breakdown of the workflow and linting rules implemented.

## GitHub Action: Check Comments

The GitHub Action Check Comments is triggered on every pull request targeting the master branch and affecting files in the lib directory. This action performs a code quality check by ensuring there are no comments in the Dart files being modified. This workflow is intended to enforce clean code practices by discouraging commented-out code in the final PR.

### Steps Explained
- **Trigger**: Activated on pull requests that modify Dart files within the lib directory and target the master branch.
- **Checkout Code**: Uses the actions/checkout@v2 action to pull the current state of the code.
- **Check for Comments**: A custom script checks for any single-line (//) or multi-line (/* ... */) comments in Dart files. If comments are found, the workflow fails, and a message prompts the developer to remove them before submitting.

## Linter Rules

This project follows a set of linter rules specified in analysis_options.yaml. The linter configuration enforces best practices and code consistency. Below are some key linter rules enforced:

### Rules Explained 

- **always_declare_return_types**: Requires explicit return type declaration for methods.
- **always_put_required_named_parameters_first**: Requires that required named parameters come before optional ones.
- **always_specify_types**: Requires that types are always specified to improve readability and safety.
- **annotate_overrides**: Requires the use of @override annotation for overridden methods.
- **avoid_annotating_with_dynamic**: Discourages the use of dynamic as an explicit type, suggesting safer types.
- **avoid_empty_else**: Avoids empty else blocks that add unnecessary complexity.
- **avoid_equals_and_hash_code_on_mutable_classes**: Prevents the implementation of == and hashCode in mutable classes to avoid consistency issues.
- **avoid_field_initializers_in_const_classes**: Field initializers should not be used in const classes.
- **avoid_init_to_null**: Do not explicitly initialize variables to null as this is implicit in Dart.
- **avoid_multiple_declarations_per_line**: Enforces one declaration per line to improve readability.
- **avoid_print**: Prohibits the use of print to avoid unnecessary output in production.
- **avoid_return_types_on_setters**: Does not allow return types on setters, as they are always void.
- **avoid_single_cascade_in_expression_statements**: Avoids solitary cascade calls ( .. ), suggesting they be used in more complex contexts.
- **avoid_types_as_parameter_names**: Prohibits using type names as parameter names to avoid confusion.
- **avoid_unnecessary_containers**: Removes Containers that do not add specific functionality.
- **avoid_unused_constructor_parameters**: Avoids unused constructor parameters, cleaning up the code.
- **avoid_void_async**: Prohibits async functions returning void, encouraging the use of types compatible with asynchronous operations.
- **camel_case_types**: Enforces the use of camelCase for type names.
- **cascade_invocations**: Recommends the use of cascades for chained method calls.
- **collection_methods_unrelated_type**: Ensures that collection methods are used with compatible types.
- **constant_identifier_names**: Constant names should be written in uppercase with underscores.
- **curly_braces_in_flow_control_structures**: Requires the use of curly braces in control structures for clarity.
- **depend_on_referenced_packages**: Ensures that only referenced packages are used in dependencies.
- **directives_ordering**: Enforces a specific order for import directives.
- **discarded_futures**: Prevents Futures from being ignored without proper handling.
- **empty_catches**: Avoids empty catch blocks, promoting proper error handling.
- **empty_constructor_bodies**: Prevents empty constructor bodies.
- **empty_statements**: Avoids empty statements that have no effect on the code.
- **eol_at_end_of_file**: Encourages a blank line at the end of files.
- **exhaustive_cases**: Forces handling of all cases in switch statements when possible.
- **file_names**: Defines that file names should follow specific conventions (usually snake_case).
- **flutter_style_todos**: TODOs should follow a specific pattern in Flutter.
- **leading_newlines_in_multiline_strings**: Avoids unnecessary leading newlines in multiline strings.
- **lines_longer_than_80_chars**: Forces lines to not exceed 80 characters to enhance readability.
- **literal_only_boolean_expressions**: Allows only explicit boolean expressions in conditions.
- **parameter_assignments**: Discourages direct assignment of values to parameters.
- **prefer_conditional_assignment**: Suggests conditional assignments where possible to simplify the code.
- **prefer_if_elements_to_conditional_expressions**: Uses if instead of complex conditional expressions.
- **prefer_is_not_operator**: Suggests using is! instead of !(obj is ...) for negation.
- **unnecessary_new**: Prevents unnecessary use of new, as it is not required in Dart.
- **unnecessary_parenthesis**: Removes unnecessary parentheses that do not add clarity.
- **unnecessary_string_escapes**: Prevents unnecessary escapes in strings.
- **unnecessary_string_interpolations**: Removes string interpolation where it is not necessary.
- **use_enums**: Promotes the use of enum to represent related constant values.
- **use_is_even_rather_than_modulo**: Suggests using isEven instead of mod 2 == 0 to check for parity.
- **prefer_const_constructors**: Uses const constructors whenever possible to optimize performance.
- **omit_local_variable_types**: Allows omitting types in local variables where they can be inferred.
- **prefer_final_fields**: Fields that will not be reassigned should be final.
- **use_key_in_widget_constructors**: Encourages the use of key in widget constructors.
- **prefer_single_quotes**: Enforces the use of single quotes for strings for consistency.
- **sort_child_properties_last**: child properties should come last in widget definitions.
- **sized_box_for_whitespace**: Uses SizedBox instead of empty containers for spacing.
- **use_full_hex_values_for_flutter_colors**: Ensures that hexadecimal color values use 8 digits, including opacity.