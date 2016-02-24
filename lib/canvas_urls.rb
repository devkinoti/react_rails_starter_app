
class CanvasUrls

  def self.urls
    {

     # Account Domain Lookups
     "SEARCH_ACCOUNT_DOMAINS" => { uri: ->() { "accounts/search" }, method: "GET" },

     # Account Notifications
     "INDEX_OF_ACTIVE_GLOBAL_NOTIFICATION_FOR_USER" => { uri: ->(account_id:, user_id:) { "accounts/#{account_id}/users/#{user_id}/account_notifications" }, method: "GET" },
     "CLOSE_NOTIFICATION_FOR_USER" => { uri: ->(account_id:, user_id:, id:) { "accounts/#{account_id}/users/#{user_id}/account_notifications/#{id}" }, method: "DELETE" },
     "CREATE_GLOBAL_NOTIFICATION" => { uri: ->(account_id:) { "accounts/#{account_id}/account_notifications" }, method: "POST" },

     # Account Reports
     "LIST_AVAILABLE_REPORTS" => { uri: ->(account_id:) { "accounts/#{account_id}/reports" }, method: "GET" },
     "START_REPORT" => { uri: ->(account_id:, report:) { "accounts/#{account_id}/reports/#{report}" }, method: "POST" },
     "INDEX_OF_REPORTS" => { uri: ->(account_id:, report:) { "accounts/#{account_id}/reports/#{report}" }, method: "GET" },
     "STATUS_OF_REPORT" => { uri: ->(account_id:, report:, id:) { "accounts/#{account_id}/reports/#{report}/#{id}" }, method: "GET" },
     "DELETE_REPORT" => { uri: ->(account_id:, report:, id:) { "accounts/#{account_id}/reports/#{report}/#{id}" }, method: "DELETE" },

     # Accounts
     "LIST_ACCOUNTS" => { uri: ->() { "accounts" }, method: "GET" },
     "LIST_ACCOUNTS_FOR_COURSE_ADMINS" => { uri: ->() { "course_accounts" }, method: "GET" },
     "GET_SINGLE_ACCOUNT" => { uri: ->(id:) { "accounts/#{id}" }, method: "GET" },
     "GET_SUB_ACCOUNTS_OF_ACCOUNT" => { uri: ->(account_id:) { "accounts/#{account_id}/sub_accounts" }, method: "GET" },
     "LIST_ACTIVE_COURSES_IN_ACCOUNT" => { uri: ->(account_id:) { "accounts/#{account_id}/courses" }, method: "GET" },
     "UPDATE_ACCOUNT" => { uri: ->(id:) { "accounts/#{id}" }, method: "PUT" },
     "DELETE_USER_FROM_ROOT_ACCOUNT" => { uri: ->(account_id:, user_id:) { "accounts/#{account_id}/users/#{user_id}" }, method: "DELETE" },
     "CREATE_NEW_ROOT_ACCOUNT" => { uri: ->() { "accounts" }, method: "POST" },
     "CREATE_NEW_ROOT_ACCOUNT_ACCOUNT_ID" => { uri: ->(account_id:) { "accounts/#{account_id}/root_accounts" }, method: "POST" },
     "CREATE_NEW_SUB_ACCOUNT" => { uri: ->(account_id:) { "accounts/#{account_id}/sub_accounts" }, method: "POST" },

     # Admins
     "MAKE_ACCOUNT_ADMIN" => { uri: ->(account_id:) { "accounts/#{account_id}/admins" }, method: "POST" },
     "REMOVE_ACCOUNT_ADMIN" => { uri: ->(account_id:, user_id:) { "accounts/#{account_id}/admins/#{user_id}" }, method: "DELETE" },
     "LIST_ACCOUNT_ADMINS" => { uri: ->(account_id:) { "accounts/#{account_id}/admins" }, method: "GET" },

     # Analytics
     "GET_DEPARTMENT_LEVEL_PARTICIPATION_DATA_TERMS" => { uri: ->(account_id:, term_id:) { "accounts/#{account_id}/analytics/terms/#{term_id}/activity" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_PARTICIPATION_DATA_CURRENT" => { uri: ->(account_id:) { "accounts/#{account_id}/analytics/current/activity" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_PARTICIPATION_DATA_COMPLETED" => { uri: ->(account_id:) { "accounts/#{account_id}/analytics/completed/activity" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_GRADE_DATA_TERMS" => { uri: ->(account_id:, term_id:) { "accounts/#{account_id}/analytics/terms/#{term_id}/grades" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_GRADE_DATA_CURRENT" => { uri: ->(account_id:) { "accounts/#{account_id}/analytics/current/grades" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_GRADE_DATA_COMPLETED" => { uri: ->(account_id:) { "accounts/#{account_id}/analytics/completed/grades" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_STATISTICS_TERMS" => { uri: ->(account_id:, term_id:) { "accounts/#{account_id}/analytics/terms/#{term_id}/statistics" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_STATISTICS_CURRENT" => { uri: ->(account_id:) { "accounts/#{account_id}/analytics/current/statistics" }, method: "GET" },
     "GET_DEPARTMENT_LEVEL_STATISTICS_COMPLETED" => { uri: ->(account_id:) { "accounts/#{account_id}/analytics/completed/statistics" }, method: "GET" },
     "GET_COURSE_LEVEL_PARTICIPATION_DATA" => { uri: ->(course_id:) { "courses/#{course_id}/analytics/activity" }, method: "GET" },
     "GET_COURSE_LEVEL_ASSIGNMENT_DATA" => { uri: ->(course_id:) { "courses/#{course_id}/analytics/assignments" }, method: "GET" },
     "GET_COURSE_LEVEL_STUDENT_SUMMARY_DATA" => { uri: ->(course_id:) { "courses/#{course_id}/analytics/student_summaries" }, method: "GET" },
     "GET_USER_IN_A_COURSE_LEVEL_PARTICIPATION_DATA" => { uri: ->(course_id:, student_id:) { "courses/#{course_id}/analytics/users/#{student_id}/activity" }, method: "GET" },
     "GET_USER_IN_A_COURSE_LEVEL_ASSIGNMENT_DATA" => { uri: ->(course_id:, student_id:) { "courses/#{course_id}/analytics/users/#{student_id}/assignments" }, method: "GET" },
     "GET_USER_IN_A_COURSE_LEVEL_MESSAGING_DATA" => { uri: ->(course_id:, student_id:) { "courses/#{course_id}/analytics/users/#{student_id}/communication" }, method: "GET" },

     # Announcement External Feeds
     "LIST_EXTERNAL_FEEDS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/external_feeds" }, method: "GET" },
     "LIST_EXTERNAL_FEEDS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/external_feeds" }, method: "GET" },
     "CREATE_EXTERNAL_FEED_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/external_feeds" }, method: "POST" },
     "CREATE_EXTERNAL_FEED_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/external_feeds" }, method: "POST" },
     "DELETE_EXTERNAL_FEED_COURSES" => { uri: ->(course_id:, external_feed_id:) { "courses/#{course_id}/external_feeds/#{external_feed_id}" }, method: "DELETE" },
     "DELETE_EXTERNAL_FEED_GROUPS" => { uri: ->(group_id:, external_feed_id:) { "groups/#{group_id}/external_feeds/#{external_feed_id}" }, method: "DELETE" },

     # Appointment Groups
     "LIST_APPOINTMENT_GROUPS" => { uri: ->() { "appointment_groups" }, method: "GET" },
     "CREATE_APPOINTMENT_GROUP" => { uri: ->() { "appointment_groups" }, method: "POST" },
     "GET_SINGLE_APPOINTMENT_GROUP" => { uri: ->(id:) { "appointment_groups/#{id}" }, method: "GET" },
     "UPDATE_APPOINTMENT_GROUP" => { uri: ->(id:) { "appointment_groups/#{id}" }, method: "PUT" },
     "DELETE_APPOINTMENT_GROUP" => { uri: ->(id:) { "appointment_groups/#{id}" }, method: "DELETE" },
     "LIST_USER_PARTICIPANTS" => { uri: ->(id:) { "appointment_groups/#{id}/users" }, method: "GET" },
     "LIST_STUDENT_GROUP_PARTICIPANTS" => { uri: ->(id:) { "appointment_groups/#{id}/groups" }, method: "GET" },

     # Assignment Groups
     "LIST_ASSIGNMENT_GROUPS" => { uri: ->(course_id:) { "courses/#{course_id}/assignment_groups" }, method: "GET" },
     "GET_ASSIGNMENT_GROUP" => { uri: ->(course_id:, assignment_group_id:) { "courses/#{course_id}/assignment_groups/#{assignment_group_id}" }, method: "GET" },
     "CREATE_ASSIGNMENT_GROUP" => { uri: ->(course_id:) { "courses/#{course_id}/assignment_groups" }, method: "POST" },
     "EDIT_ASSIGNMENT_GROUP" => { uri: ->(course_id:, assignment_group_id:) { "courses/#{course_id}/assignment_groups/#{assignment_group_id}" }, method: "PUT" },
     "DESTROY_ASSIGNMENT_GROUP" => { uri: ->(course_id:, assignment_group_id:) { "courses/#{course_id}/assignment_groups/#{assignment_group_id}" }, method: "DELETE" },

     # Assignments
     "DELETE_ASSIGNMENT" => { uri: ->(course_id:, id:) { "courses/#{course_id}/assignments/#{id}" }, method: "DELETE" },
     "LIST_ASSIGNMENTS" => { uri: ->(course_id:) { "courses/#{course_id}/assignments" }, method: "GET" },
     "LIST_ASSIGNMENTS_FOR_USER" => { uri: ->(user_id:, course_id:) { "users/#{user_id}/courses/#{course_id}/assignments" }, method: "GET" },
     "GET_SINGLE_ASSIGNMENT" => { uri: ->(course_id:, id:) { "courses/#{course_id}/assignments/#{id}" }, method: "GET" },
     "CREATE_ASSIGNMENT" => { uri: ->(course_id:) { "courses/#{course_id}/assignments" }, method: "POST" },
     "EDIT_ASSIGNMENT" => { uri: ->(course_id:, id:) { "courses/#{course_id}/assignments/#{id}" }, method: "PUT" },
     "LIST_ASSIGNMENT_OVERRIDES" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/overrides" }, method: "GET" },
     "GET_SINGLE_ASSIGNMENT_OVERRIDE" => { uri: ->(course_id:, assignment_id:, id:) { "courses/#{course_id}/assignments/#{assignment_id}/overrides/#{id}" }, method: "GET" },
     "REDIRECT_TO_ASSIGNMENT_OVERRIDE_FOR_GROUP" => { uri: ->(group_id:, assignment_id:) { "groups/#{group_id}/assignments/#{assignment_id}/override" }, method: "GET" },
     "REDIRECT_TO_ASSIGNMENT_OVERRIDE_FOR_SECTION" => { uri: ->(course_section_id:, assignment_id:) { "sections/#{course_section_id}/assignments/#{assignment_id}/override" }, method: "GET" },
     "CREATE_ASSIGNMENT_OVERRIDE" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/overrides" }, method: "POST" },
     "UPDATE_ASSIGNMENT_OVERRIDE" => { uri: ->(course_id:, assignment_id:, id:) { "courses/#{course_id}/assignments/#{assignment_id}/overrides/#{id}" }, method: "PUT" },
     "DELETE_ASSIGNMENT_OVERRIDE" => { uri: ->(course_id:, assignment_id:, id:) { "courses/#{course_id}/assignments/#{assignment_id}/overrides/#{id}" }, method: "DELETE" },

     # Authentication Providers
     "LIST_AUTHENTICATION_PROVIDERS_AUTHENTICATION_PROVIDERS" => { uri: ->(account_id:) { "accounts/#{account_id}/authentication_providers" }, method: "GET" },
     "LIST_AUTHENTICATION_PROVIDERS_ACCOUNT_AUTHORIZATION_CONFIGS" => { uri: ->(account_id:) { "accounts/#{account_id}/account_authorization_configs" }, method: "GET" },
     "ADD_AUTHENTICATION_PROVIDER_AUTHENTICATION_PROVIDERS" => { uri: ->(account_id:) { "accounts/#{account_id}/authentication_providers" }, method: "POST" },
     "ADD_AUTHENTICATION_PROVIDER_ACCOUNT_AUTHORIZATION_CONFIGS" => { uri: ->(account_id:) { "accounts/#{account_id}/account_authorization_configs" }, method: "POST" },
     "UPDATE_AUTHENTICATION_PROVIDER_AUTHENTICATION_PROVIDERS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/authentication_providers/#{id}" }, method: "PUT" },
     "UPDATE_AUTHENTICATION_PROVIDER_ACCOUNT_AUTHORIZATION_CONFIGS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/account_authorization_configs/#{id}" }, method: "PUT" },
     "GET_AUTHENTICATION_PROVIDER_AUTHENTICATION_PROVIDERS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/authentication_providers/#{id}" }, method: "GET" },
     "GET_AUTHENTICATION_PROVIDER_ACCOUNT_AUTHORIZATION_CONFIGS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/account_authorization_configs/#{id}" }, method: "GET" },
     "DELETE_AUTHENTICATION_PROVIDER_AUTHENTICATION_PROVIDERS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/authentication_providers/#{id}" }, method: "DELETE" },
     "DELETE_AUTHENTICATION_PROVIDER_ACCOUNT_AUTHORIZATION_CONFIGS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/account_authorization_configs/#{id}" }, method: "DELETE" },
     "GET_DISCOVERY_URL_DEPRECATED" => { uri: ->(account_id:) { "accounts/#{account_id}/account_authorization_configs/discovery_url" }, method: "GET" },
     "SET_DISCOVERY_URL_DEPRECATED" => { uri: ->(account_id:) { "accounts/#{account_id}/account_authorization_configs/discovery_url" }, method: "PUT" },
     "DELETE_DISCOVERY_URL_DEPRECATED" => { uri: ->(account_id:) { "accounts/#{account_id}/account_authorization_configs/discovery_url" }, method: "DELETE" },
     "SHOW_ACCOUNT_AUTH_SETTINGS" => { uri: ->(account_id:) { "accounts/#{account_id}/sso_settings" }, method: "GET" },
     "UPDATE_ACCOUNT_AUTH_SETTINGS" => { uri: ->(account_id:) { "accounts/#{account_id}/sso_settings" }, method: "PUT" },

     # Authentications Log
     "QUERY_BY_LOGIN" => { uri: ->(login_id:) { "audit/authentication/logins/#{login_id}" }, method: "GET" },
     "QUERY_BY_ACCOUNT" => { uri: ->(account_id:) { "audit/authentication/accounts/#{account_id}" }, method: "GET" },
     "QUERY_BY_USER" => { uri: ->(user_id:) { "audit/authentication/users/#{user_id}" }, method: "GET" },

     # Bookmarks
     "LIST_BOOKMARKS" => { uri: ->() { "users/self/bookmarks" }, method: "GET" },
     "CREATE_BOOKMARK" => { uri: ->() { "users/self/bookmarks" }, method: "POST" },
     "GET_BOOKMARK" => { uri: ->(id:) { "users/self/bookmarks/#{id}" }, method: "GET" },
     "UPDATE_BOOKMARK" => { uri: ->(id:) { "users/self/bookmarks/#{id}" }, method: "PUT" },
     "DELETE_BOOKMARK" => { uri: ->(id:) { "users/self/bookmarks/#{id}" }, method: "DELETE" },

     # Calendar Events
     "LIST_CALENDAR_EVENTS" => { uri: ->() { "calendar_events" }, method: "GET" },
     "LIST_CALENDAR_EVENTS_FOR_USER" => { uri: ->(user_id:) { "users/#{user_id}/calendar_events" }, method: "GET" },
     "CREATE_CALENDAR_EVENT" => { uri: ->() { "calendar_events" }, method: "POST" },
     "GET_SINGLE_CALENDAR_EVENT_OR_ASSIGNMENT" => { uri: ->(id:) { "calendar_events/#{id}" }, method: "GET" },
     "RESERVE_TIME_SLOT" => { uri: ->(id:) { "calendar_events/#{id}/reservations" }, method: "POST" },
     "RESERVE_TIME_SLOT_PARTICIPANT_ID" => { uri: ->(id:, participant_id:) { "calendar_events/#{id}/reservations/#{participant_id}" }, method: "POST" },
     "UPDATE_CALENDAR_EVENT" => { uri: ->(id:) { "calendar_events/#{id}" }, method: "PUT" },
     "DELETE_CALENDAR_EVENT" => { uri: ->(id:) { "calendar_events/#{id}" }, method: "DELETE" },

     # Collaborations
     "LIST_MEMBERS_OF_COLLABORATION" => { uri: ->(id:) { "collaborations/#{id}/members" }, method: "GET" },

     # CommMessages
     "LIST_OF_COMMMESSAGES_FOR_USER" => { uri: ->() { "comm_messages" }, method: "GET" },

     # Communication Channels
     "LIST_USER_COMMUNICATION_CHANNELS" => { uri: ->(user_id:) { "users/#{user_id}/communication_channels" }, method: "GET" },
     "CREATE_COMMUNICATION_CHANNEL" => { uri: ->(user_id:) { "users/#{user_id}/communication_channels" }, method: "POST" },
     "DELETE_COMMUNICATION_CHANNEL_ID" => { uri: ->(user_id:, id:) { "users/#{user_id}/communication_channels/#{id}" }, method: "DELETE" },
     "DELETE_COMMUNICATION_CHANNEL_TYPE" => { uri: ->(user_id:, type:, address:) { "users/#{user_id}/communication_channels/#{type}/#{address}" }, method: "DELETE" },

     # Conferences
     "LIST_CONFERENCES_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/conferences" }, method: "GET" },
     "LIST_CONFERENCES_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/conferences" }, method: "GET" },

     # Content Exports
     "LIST_CONTENT_EXPORTS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/content_exports" }, method: "GET" },
     "LIST_CONTENT_EXPORTS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/content_exports" }, method: "GET" },
     "LIST_CONTENT_EXPORTS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/content_exports" }, method: "GET" },
     "SHOW_CONTENT_EXPORT_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/content_exports/#{id}" }, method: "GET" },
     "SHOW_CONTENT_EXPORT_GROUPS" => { uri: ->(group_id:, id:) { "groups/#{group_id}/content_exports/#{id}" }, method: "GET" },
     "SHOW_CONTENT_EXPORT_USERS" => { uri: ->(user_id:, id:) { "users/#{user_id}/content_exports/#{id}" }, method: "GET" },
     "EXPORT_CONTENT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/content_exports" }, method: "POST" },
     "EXPORT_CONTENT_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/content_exports" }, method: "POST" },
     "EXPORT_CONTENT_USERS" => { uri: ->(user_id:) { "users/#{user_id}/content_exports" }, method: "POST" },

     # Content Migrations
     "LIST_MIGRATION_ISSUES_ACCOUNTS" => { uri: ->(account_id:, content_migration_id:) { "accounts/#{account_id}/content_migrations/#{content_migration_id}/migration_issues" }, method: "GET" },
     "LIST_MIGRATION_ISSUES_COURSES" => { uri: ->(course_id:, content_migration_id:) { "courses/#{course_id}/content_migrations/#{content_migration_id}/migration_issues" }, method: "GET" },
     "LIST_MIGRATION_ISSUES_GROUPS" => { uri: ->(group_id:, content_migration_id:) { "groups/#{group_id}/content_migrations/#{content_migration_id}/migration_issues" }, method: "GET" },
     "LIST_MIGRATION_ISSUES_USERS" => { uri: ->(user_id:, content_migration_id:) { "users/#{user_id}/content_migrations/#{content_migration_id}/migration_issues" }, method: "GET" },
     "GET_MIGRATION_ISSUE_ACCOUNTS" => { uri: ->(account_id:, content_migration_id:, id:) { "accounts/#{account_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "GET" },
     "GET_MIGRATION_ISSUE_COURSES" => { uri: ->(course_id:, content_migration_id:, id:) { "courses/#{course_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "GET" },
     "GET_MIGRATION_ISSUE_GROUPS" => { uri: ->(group_id:, content_migration_id:, id:) { "groups/#{group_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "GET" },
     "GET_MIGRATION_ISSUE_USERS" => { uri: ->(user_id:, content_migration_id:, id:) { "users/#{user_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "GET" },
     "UPDATE_MIGRATION_ISSUE_ACCOUNTS" => { uri: ->(account_id:, content_migration_id:, id:) { "accounts/#{account_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "PUT" },
     "UPDATE_MIGRATION_ISSUE_COURSES" => { uri: ->(course_id:, content_migration_id:, id:) { "courses/#{course_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "PUT" },
     "UPDATE_MIGRATION_ISSUE_GROUPS" => { uri: ->(group_id:, content_migration_id:, id:) { "groups/#{group_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "PUT" },
     "UPDATE_MIGRATION_ISSUE_USERS" => { uri: ->(user_id:, content_migration_id:, id:) { "users/#{user_id}/content_migrations/#{content_migration_id}/migration_issues/#{id}" }, method: "PUT" },
     "LIST_CONTENT_MIGRATIONS_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/content_migrations" }, method: "GET" },
     "LIST_CONTENT_MIGRATIONS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/content_migrations" }, method: "GET" },
     "LIST_CONTENT_MIGRATIONS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/content_migrations" }, method: "GET" },
     "LIST_CONTENT_MIGRATIONS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/content_migrations" }, method: "GET" },
     "GET_CONTENT_MIGRATION_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/content_migrations/#{id}" }, method: "GET" },
     "GET_CONTENT_MIGRATION_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/content_migrations/#{id}" }, method: "GET" },
     "GET_CONTENT_MIGRATION_GROUPS" => { uri: ->(group_id:, id:) { "groups/#{group_id}/content_migrations/#{id}" }, method: "GET" },
     "GET_CONTENT_MIGRATION_USERS" => { uri: ->(user_id:, id:) { "users/#{user_id}/content_migrations/#{id}" }, method: "GET" },
     "CREATE_CONTENT_MIGRATION_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/content_migrations" }, method: "POST" },
     "CREATE_CONTENT_MIGRATION_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/content_migrations" }, method: "POST" },
     "CREATE_CONTENT_MIGRATION_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/content_migrations" }, method: "POST" },
     "CREATE_CONTENT_MIGRATION_USERS" => { uri: ->(user_id:) { "users/#{user_id}/content_migrations" }, method: "POST" },
     "UPDATE_CONTENT_MIGRATION_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/content_migrations/#{id}" }, method: "PUT" },
     "UPDATE_CONTENT_MIGRATION_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/content_migrations/#{id}" }, method: "PUT" },
     "UPDATE_CONTENT_MIGRATION_GROUPS" => { uri: ->(group_id:, id:) { "groups/#{group_id}/content_migrations/#{id}" }, method: "PUT" },
     "UPDATE_CONTENT_MIGRATION_USERS" => { uri: ->(user_id:, id:) { "users/#{user_id}/content_migrations/#{id}" }, method: "PUT" },
     "LIST_MIGRATION_SYSTEMS_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/content_migrations/migrators" }, method: "GET" },
     "LIST_MIGRATION_SYSTEMS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/content_migrations/migrators" }, method: "GET" },
     "LIST_MIGRATION_SYSTEMS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/content_migrations/migrators" }, method: "GET" },
     "LIST_MIGRATION_SYSTEMS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/content_migrations/migrators" }, method: "GET" },

     # Conversations
     "LIST_CONVERSATIONS" => { uri: ->() { "conversations" }, method: "GET" },
     "CREATE_CONVERSATION" => { uri: ->() { "conversations" }, method: "POST" },
     "GET_RUNNING_BATCHES" => { uri: ->() { "conversations/batches" }, method: "GET" },
     "GET_SINGLE_CONVERSATION" => { uri: ->(id:) { "conversations/#{id}" }, method: "GET" },
     "EDIT_CONVERSATION" => { uri: ->(id:) { "conversations/#{id}" }, method: "PUT" },
     "MARK_ALL_AS_READ" => { uri: ->() { "conversations/mark_all_as_read" }, method: "POST" },
     "DELETE_CONVERSATION" => { uri: ->(id:) { "conversations/#{id}" }, method: "DELETE" },
     "ADD_RECIPIENTS" => { uri: ->(id:) { "conversations/#{id}/add_recipients" }, method: "POST" },
     "ADD_MESSAGE" => { uri: ->(id:) { "conversations/#{id}/add_message" }, method: "POST" },
     "DELETE_MESSAGE" => { uri: ->(id:) { "conversations/#{id}/remove_messages" }, method: "POST" },
     "BATCH_UPDATE_CONVERSATIONS" => { uri: ->() { "conversations" }, method: "PUT" },
     "FIND_RECIPIENTS" => { uri: ->() { "conversations/find_recipients" }, method: "GET" },
     "UNREAD_COUNT" => { uri: ->() { "conversations/unread_count" }, method: "GET" },

     # Course Audit log
     "QUERY_BY_COURSE" => { uri: ->(course_id:) { "audit/course/courses/#{course_id}" }, method: "GET" },

     # Course Quiz Extensions
     "SET_EXTENSIONS_FOR_STUDENT_QUIZ_SUBMISSIONS" => { uri: ->(course_id:) { "courses/#{course_id}/quiz_extensions" }, method: "POST" },

     # Courses
     "LIST_YOUR_COURSES" => { uri: ->() { "courses" }, method: "GET" },
     "LIST_COURSES_FOR_USER" => { uri: ->(user_id:) { "users/#{user_id}/courses" }, method: "GET" },
     "CREATE_NEW_COURSE" => { uri: ->(account_id:) { "accounts/#{account_id}/courses" }, method: "POST" },
     "UPLOAD_FILE" => { uri: ->(course_id:) { "courses/#{course_id}/files" }, method: "POST" },
     "LIST_STUDENTS" => { uri: ->(course_id:) { "courses/#{course_id}/students" }, method: "GET" },
     "LIST_USERS_IN_COURSE_USERS" => { uri: ->(course_id:) { "courses/#{course_id}/users" }, method: "GET" },
     "LIST_USERS_IN_COURSE_SEARCH_USERS" => { uri: ->(course_id:) { "courses/#{course_id}/search_users" }, method: "GET" },
     "LIST_RECENTLY_LOGGED_IN_STUDENTS" => { uri: ->(course_id:) { "courses/#{course_id}/recent_students" }, method: "GET" },
     "GET_SINGLE_USER" => { uri: ->(course_id:, id:) { "courses/#{course_id}/users/#{id}" }, method: "GET" },
     "PREVIEW_PROCESSED_HTML" => { uri: ->(course_id:) { "courses/#{course_id}/preview_html" }, method: "POST" },
     "COURSE_ACTIVITY_STREAM" => { uri: ->(course_id:) { "courses/#{course_id}/activity_stream" }, method: "GET" },
     "COURSE_ACTIVITY_STREAM_SUMMARY" => { uri: ->(course_id:) { "courses/#{course_id}/activity_stream/summary" }, method: "GET" },
     "COURSE_TODO_ITEMS" => { uri: ->(course_id:) { "courses/#{course_id}/todo" }, method: "GET" },
     "CONCLUDE_COURSE" => { uri: ->(id:) { "courses/#{id}" }, method: "DELETE" },
     "GET_COURSE_SETTINGS" => { uri: ->(course_id:) { "courses/#{course_id}/settings" }, method: "GET" },
     "UPDATE_COURSE_SETTINGS" => { uri: ->(course_id:) { "courses/#{course_id}/settings" }, method: "PUT" },
     "GET_SINGLE_COURSE_COURSES" => { uri: ->(id:) { "courses/#{id}" }, method: "GET" },
     "GET_SINGLE_COURSE_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/courses/#{id}" }, method: "GET" },
     "UPDATE_COURSE" => { uri: ->(id:) { "courses/#{id}" }, method: "PUT" },
     "UPDATE_COURSES" => { uri: ->(account_id:) { "accounts/#{account_id}/courses" }, method: "PUT" },
     "RESET_COURSE" => { uri: ->(course_id:) { "courses/#{course_id}/reset_content" }, method: "POST" },
     "GET_COURSE_COPY_STATUS" => { uri: ->(course_id:, id:) { "courses/#{course_id}/course_copy/#{id}" }, method: "GET" },
     "COPY_COURSE_CONTENT" => { uri: ->(course_id:) { "courses/#{course_id}/course_copy" }, method: "POST" },

     # Custom Gradebook Columns
     "LIST_CUSTOM_GRADEBOOK_COLUMNS" => { uri: ->(course_id:) { "courses/#{course_id}/custom_gradebook_columns" }, method: "GET" },
     "CREATE_CUSTOM_GRADEBOOK_COLUMN" => { uri: ->(course_id:) { "courses/#{course_id}/custom_gradebook_columns" }, method: "POST" },
     "UPDATE_CUSTOM_GRADEBOOK_COLUMN" => { uri: ->(course_id:, id:) { "courses/#{course_id}/custom_gradebook_columns/#{id}" }, method: "PUT" },
     "DELETE_CUSTOM_GRADEBOOK_COLUMN" => { uri: ->(course_id:, id:) { "courses/#{course_id}/custom_gradebook_columns/#{id}" }, method: "DELETE" },
     "REORDER_CUSTOM_COLUMNS" => { uri: ->(course_id:) { "courses/#{course_id}/custom_gradebook_columns/reorder" }, method: "POST" },
     "LIST_ENTRIES_FOR_COLUMN" => { uri: ->(course_id:, id:) { "courses/#{course_id}/custom_gradebook_columns/#{id}/data" }, method: "GET" },
     "UPDATE_COLUMN_DATA" => { uri: ->(course_id:, id:, user_id:) { "courses/#{course_id}/custom_gradebook_columns/#{id}/data/#{user_id}" }, method: "PUT" },

     # Discussion Topics
     "LIST_DISCUSSION_TOPICS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/discussion_topics" }, method: "GET" },
     "LIST_DISCUSSION_TOPICS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/discussion_topics" }, method: "GET" },
     "CREATE_NEW_DISCUSSION_TOPIC_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/discussion_topics" }, method: "POST" },
     "CREATE_NEW_DISCUSSION_TOPIC_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/discussion_topics" }, method: "POST" },
     "UPDATE_TOPIC_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}" }, method: "PUT" },
     "UPDATE_TOPIC_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}" }, method: "PUT" },
     "DELETE_TOPIC_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}" }, method: "DELETE" },
     "DELETE_TOPIC_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}" }, method: "DELETE" },
     "REORDER_PINNED_TOPICS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/discussion_topics/reorder" }, method: "POST" },
     "REORDER_PINNED_TOPICS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/discussion_topics/reorder" }, method: "POST" },
     "UPDATE_ENTRY_COURSES" => { uri: ->(course_id:, topic_id:, id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{id}" }, method: "PUT" },
     "UPDATE_ENTRY_GROUPS" => { uri: ->(group_id:, topic_id:, id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{id}" }, method: "PUT" },
     "DELETE_ENTRY_COURSES" => { uri: ->(course_id:, topic_id:, id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{id}" }, method: "DELETE" },
     "DELETE_ENTRY_GROUPS" => { uri: ->(group_id:, topic_id:, id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{id}" }, method: "DELETE" },
     "GET_SINGLE_TOPIC_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}" }, method: "GET" },
     "GET_SINGLE_TOPIC_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}" }, method: "GET" },
     "GET_FULL_TOPIC_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/view" }, method: "GET" },
     "GET_FULL_TOPIC_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/view" }, method: "GET" },
     "POST_ENTRY_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries" }, method: "POST" },
     "POST_ENTRY_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries" }, method: "POST" },
     "LIST_TOPIC_ENTRIES_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries" }, method: "GET" },
     "LIST_TOPIC_ENTRIES_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries" }, method: "GET" },
     "POST_REPLY_COURSES" => { uri: ->(course_id:, topic_id:, entry_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/replies" }, method: "POST" },
     "POST_REPLY_GROUPS" => { uri: ->(group_id:, topic_id:, entry_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/replies" }, method: "POST" },
     "LIST_ENTRY_REPLIES_COURSES" => { uri: ->(course_id:, topic_id:, entry_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/replies" }, method: "GET" },
     "LIST_ENTRY_REPLIES_GROUPS" => { uri: ->(group_id:, topic_id:, entry_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/replies" }, method: "GET" },
     "LIST_ENTRIES_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entry_list" }, method: "GET" },
     "LIST_ENTRIES_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entry_list" }, method: "GET" },
     "MARK_TOPIC_AS_READ_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/read" }, method: "PUT" },
     "MARK_TOPIC_AS_READ_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/read" }, method: "PUT" },
     "MARK_TOPIC_AS_UNREAD_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/read" }, method: "DELETE" },
     "MARK_TOPIC_AS_UNREAD_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/read" }, method: "DELETE" },
     "MARK_ALL_ENTRIES_AS_READ_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/read_all" }, method: "PUT" },
     "MARK_ALL_ENTRIES_AS_READ_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/read_all" }, method: "PUT" },
     "MARK_ALL_ENTRIES_AS_UNREAD_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/read_all" }, method: "DELETE" },
     "MARK_ALL_ENTRIES_AS_UNREAD_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/read_all" }, method: "DELETE" },
     "MARK_ENTRY_AS_READ_COURSES" => { uri: ->(course_id:, topic_id:, entry_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/read" }, method: "PUT" },
     "MARK_ENTRY_AS_READ_GROUPS" => { uri: ->(group_id:, topic_id:, entry_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/read" }, method: "PUT" },
     "MARK_ENTRY_AS_UNREAD_COURSES" => { uri: ->(course_id:, topic_id:, entry_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/read" }, method: "DELETE" },
     "MARK_ENTRY_AS_UNREAD_GROUPS" => { uri: ->(group_id:, topic_id:, entry_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/read" }, method: "DELETE" },
     "RATE_ENTRY_COURSES" => { uri: ->(course_id:, topic_id:, entry_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/rating" }, method: "POST" },
     "RATE_ENTRY_GROUPS" => { uri: ->(group_id:, topic_id:, entry_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/entries/#{entry_id}/rating" }, method: "POST" },
     "SUBSCRIBE_TO_TOPIC_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/subscribed" }, method: "PUT" },
     "SUBSCRIBE_TO_TOPIC_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/subscribed" }, method: "PUT" },
     "UNSUBSCRIBE_FROM_TOPIC_COURSES" => { uri: ->(course_id:, topic_id:) { "courses/#{course_id}/discussion_topics/#{topic_id}/subscribed" }, method: "DELETE" },
     "UNSUBSCRIBE_FROM_TOPIC_GROUPS" => { uri: ->(group_id:, topic_id:) { "groups/#{group_id}/discussion_topics/#{topic_id}/subscribed" }, method: "DELETE" },

     # Document Previews

     # Enrollment Terms
     "CREATE_ENROLLMENT_TERM" => { uri: ->(account_id:) { "accounts/#{account_id}/terms" }, method: "POST" },
     "UPDATE_ENROLLMENT_TERM" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/terms/#{id}" }, method: "PUT" },
     "DELETE_ENROLLMENT_TERM" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/terms/#{id}" }, method: "DELETE" },
     "LIST_ENROLLMENT_TERMS" => { uri: ->(account_id:) { "accounts/#{account_id}/terms" }, method: "GET" },

     # Enrollments
     "LIST_ENROLLMENTS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/enrollments" }, method: "GET" },
     "LIST_ENROLLMENTS_SECTIONS" => { uri: ->(section_id:) { "sections/#{section_id}/enrollments" }, method: "GET" },
     "LIST_ENROLLMENTS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/enrollments" }, method: "GET" },
     "ENROLLMENT_BY_ID" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/enrollments/#{id}" }, method: "GET" },
     "ENROLL_USER_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/enrollments" }, method: "POST" },
     "ENROLL_USER_SECTIONS" => { uri: ->(section_id:) { "sections/#{section_id}/enrollments" }, method: "POST" },
     "CONCLUDE_OR_INACTIVATE_ENROLLMENT" => { uri: ->(course_id:, id:) { "courses/#{course_id}/enrollments/#{id}" }, method: "DELETE" },
     "RE_ACTIVATE_ENROLLMENT" => { uri: ->(course_id:, id:) { "courses/#{course_id}/enrollments/#{id}/reactivate" }, method: "PUT" },

     # Error Reports
     "CREATE_ERROR_REPORT" => { uri: ->() { "error_reports" }, method: "POST" },

     # External Tools
     "LIST_EXTERNAL_TOOLS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/external_tools" }, method: "GET" },
     "LIST_EXTERNAL_TOOLS_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/external_tools" }, method: "GET" },
     "GET_SESSIONLESS_LAUNCH_URL_FOR_EXTERNAL_TOOL_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/external_tools/sessionless_launch" }, method: "GET" },
     "GET_SESSIONLESS_LAUNCH_URL_FOR_EXTERNAL_TOOL_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/external_tools/sessionless_launch" }, method: "GET" },
     "GET_SINGLE_EXTERNAL_TOOL_COURSES" => { uri: ->(course_id:, external_tool_id:) { "courses/#{course_id}/external_tools/#{external_tool_id}" }, method: "GET" },
     "GET_SINGLE_EXTERNAL_TOOL_ACCOUNTS" => { uri: ->(account_id:, external_tool_id:) { "accounts/#{account_id}/external_tools/#{external_tool_id}" }, method: "GET" },
     "CREATE_EXTERNAL_TOOL_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/external_tools" }, method: "POST" },
     "CREATE_EXTERNAL_TOOL_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/external_tools" }, method: "POST" },
     "EDIT_EXTERNAL_TOOL_COURSES" => { uri: ->(course_id:, external_tool_id:) { "courses/#{course_id}/external_tools/#{external_tool_id}" }, method: "PUT" },
     "EDIT_EXTERNAL_TOOL_ACCOUNTS" => { uri: ->(account_id:, external_tool_id:) { "accounts/#{account_id}/external_tools/#{external_tool_id}" }, method: "PUT" },
     "DELETE_EXTERNAL_TOOL_COURSES" => { uri: ->(course_id:, external_tool_id:) { "courses/#{course_id}/external_tools/#{external_tool_id}" }, method: "DELETE" },
     "DELETE_EXTERNAL_TOOL_ACCOUNTS" => { uri: ->(account_id:, external_tool_id:) { "accounts/#{account_id}/external_tools/#{external_tool_id}" }, method: "DELETE" },

     # Favorites
     "LIST_FAVORITE_COURSES" => { uri: ->() { "users/self/favorites/courses" }, method: "GET" },
     "LIST_FAVORITE_GROUPS" => { uri: ->() { "users/self/favorites/groups" }, method: "GET" },
     "ADD_COURSE_TO_FAVORITES" => { uri: ->(id:) { "users/self/favorites/courses/#{id}" }, method: "POST" },
     "ADD_GROUP_TO_FAVORITES" => { uri: ->(id:) { "users/self/favorites/groups/#{id}" }, method: "POST" },
     "REMOVE_COURSE_FROM_FAVORITES" => { uri: ->(id:) { "users/self/favorites/courses/#{id}" }, method: "DELETE" },
     "REMOVE_GROUP_FROM_FAVORITES" => { uri: ->(id:) { "users/self/favorites/groups/#{id}" }, method: "DELETE" },
     "RESET_COURSE_FAVORITES" => { uri: ->() { "users/self/favorites/courses" }, method: "DELETE" },
     "RESET_GROUP_FAVORITES" => { uri: ->() { "users/self/favorites/groups" }, method: "DELETE" },

     # Feature Flags
     "LIST_FEATURES_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/features" }, method: "GET" },
     "LIST_FEATURES_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/features" }, method: "GET" },
     "LIST_FEATURES_USERS" => { uri: ->(user_id:) { "users/#{user_id}/features" }, method: "GET" },
     "LIST_ENABLED_FEATURES_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/features/enabled" }, method: "GET" },
     "LIST_ENABLED_FEATURES_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/features/enabled" }, method: "GET" },
     "LIST_ENABLED_FEATURES_USERS" => { uri: ->(user_id:) { "users/#{user_id}/features/enabled" }, method: "GET" },
     "GET_FEATURE_FLAG_COURSES" => { uri: ->(course_id:, feature:) { "courses/#{course_id}/features/flags/#{feature}" }, method: "GET" },
     "GET_FEATURE_FLAG_ACCOUNTS" => { uri: ->(account_id:, feature:) { "accounts/#{account_id}/features/flags/#{feature}" }, method: "GET" },
     "GET_FEATURE_FLAG_USERS" => { uri: ->(user_id:, feature:) { "users/#{user_id}/features/flags/#{feature}" }, method: "GET" },
     "SET_FEATURE_FLAG_COURSES" => { uri: ->(course_id:, feature:) { "courses/#{course_id}/features/flags/#{feature}" }, method: "PUT" },
     "SET_FEATURE_FLAG_ACCOUNTS" => { uri: ->(account_id:, feature:) { "accounts/#{account_id}/features/flags/#{feature}" }, method: "PUT" },
     "SET_FEATURE_FLAG_USERS" => { uri: ->(user_id:, feature:) { "users/#{user_id}/features/flags/#{feature}" }, method: "PUT" },
     "REMOVE_FEATURE_FLAG_COURSES" => { uri: ->(course_id:, feature:) { "courses/#{course_id}/features/flags/#{feature}" }, method: "DELETE" },
     "REMOVE_FEATURE_FLAG_ACCOUNTS" => { uri: ->(account_id:, feature:) { "accounts/#{account_id}/features/flags/#{feature}" }, method: "DELETE" },
     "REMOVE_FEATURE_FLAG_USERS" => { uri: ->(user_id:, feature:) { "users/#{user_id}/features/flags/#{feature}" }, method: "DELETE" },

     # Files
     "GET_QUOTA_INFORMATION_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/files/quota" }, method: "GET" },
     "GET_QUOTA_INFORMATION_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/files/quota" }, method: "GET" },
     "GET_QUOTA_INFORMATION_USERS" => { uri: ->(user_id:) { "users/#{user_id}/files/quota" }, method: "GET" },
     "LIST_FILES_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/files" }, method: "GET" },
     "LIST_FILES_USERS" => { uri: ->(user_id:) { "users/#{user_id}/files" }, method: "GET" },
     "LIST_FILES_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/files" }, method: "GET" },
     "LIST_FILES_FOLDERS" => { uri: ->(id:) { "folders/#{id}/files" }, method: "GET" },
     "GET_QUOTA_INFORMATION" => { uri: ->(id:) { "files/#{id}/public_url" }, method: "GET" },
     "GET_FILE_FILES" => { uri: ->(id:) { "files/#{id}" }, method: "GET" },
     "GET_FILE_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/files/#{id}" }, method: "GET" },
     "GET_FILE_GROUPS" => { uri: ->(group_id:, id:) { "groups/#{group_id}/files/#{id}" }, method: "GET" },
     "GET_FILE_USERS" => { uri: ->(user_id:, id:) { "users/#{user_id}/files/#{id}" }, method: "GET" },
     "UPDATE_FILE" => { uri: ->(id:) { "files/#{id}" }, method: "PUT" },
     "DELETE_FILE" => { uri: ->(id:) { "files/#{id}" }, method: "DELETE" },
     "LIST_FOLDERS" => { uri: ->(id:) { "folders/#{id}/folders" }, method: "GET" },
     "LIST_ALL_FOLDERS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/folders" }, method: "GET" },
     "LIST_ALL_FOLDERS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/folders" }, method: "GET" },
     "LIST_ALL_FOLDERS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/folders" }, method: "GET" },
     "RESOLVE_PATH_COURSES_FULL_PATH" => { uri: ->(course_id:) { "courses/#{course_id}/folders/by_path/*full_path" }, method: "GET" },
     "RESOLVE_PATH_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/folders/by_path" }, method: "GET" },
     "RESOLVE_PATH_USERS_FULL_PATH" => { uri: ->(user_id:) { "users/#{user_id}/folders/by_path/*full_path" }, method: "GET" },
     "RESOLVE_PATH_USERS" => { uri: ->(user_id:) { "users/#{user_id}/folders/by_path" }, method: "GET" },
     "RESOLVE_PATH_GROUPS_FULL_PATH" => { uri: ->(group_id:) { "groups/#{group_id}/folders/by_path/*full_path" }, method: "GET" },
     "RESOLVE_PATH_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/folders/by_path" }, method: "GET" },
     "GET_FOLDER_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/folders/#{id}" }, method: "GET" },
     "GET_FOLDER_USERS" => { uri: ->(user_id:, id:) { "users/#{user_id}/folders/#{id}" }, method: "GET" },
     "GET_FOLDER_GROUPS" => { uri: ->(group_id:, id:) { "groups/#{group_id}/folders/#{id}" }, method: "GET" },
     "GET_FOLDER_FOLDERS" => { uri: ->(id:) { "folders/#{id}" }, method: "GET" },
     "UPDATE_FOLDER" => { uri: ->(id:) { "folders/#{id}" }, method: "PUT" },
     "CREATE_FOLDER_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/folders" }, method: "POST" },
     "CREATE_FOLDER_USERS" => { uri: ->(user_id:) { "users/#{user_id}/folders" }, method: "POST" },
     "CREATE_FOLDER_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/folders" }, method: "POST" },
     "CREATE_FOLDER_FOLDERS" => { uri: ->(folder_id:) { "folders/#{folder_id}/folders" }, method: "POST" },
     "DELETE_FOLDER" => { uri: ->(id:) { "folders/#{id}" }, method: "DELETE" },
     "COPY_FILE" => { uri: ->(dest_folder_id:) { "folders/#{dest_folder_id}/copy_file" }, method: "POST" },
     "COPY_FOLDER" => { uri: ->(dest_folder_id:) { "folders/#{dest_folder_id}/copy_folder" }, method: "POST" },
     "SET_USAGE_RIGHTS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/usage_rights" }, method: "PUT" },
     "SET_USAGE_RIGHTS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/usage_rights" }, method: "PUT" },
     "SET_USAGE_RIGHTS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/usage_rights" }, method: "PUT" },
     "REMOVE_USAGE_RIGHTS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/usage_rights" }, method: "DELETE" },
     "REMOVE_USAGE_RIGHTS_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/usage_rights" }, method: "DELETE" },
     "REMOVE_USAGE_RIGHTS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/usage_rights" }, method: "DELETE" },
     "LIST_LICENSES_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/content_licenses" }, method: "GET" },
     "LIST_LICENSES_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/content_licenses" }, method: "GET" },
     "LIST_LICENSES_USERS" => { uri: ->(user_id:) { "users/#{user_id}/content_licenses" }, method: "GET" },

     # Grade Change Log
     "QUERY_BY_ASSIGNMENT" => { uri: ->(assignment_id:) { "audit/grade_change/assignments/#{assignment_id}" }, method: "GET" },
     "QUERY_BY_STUDENT" => { uri: ->(student_id:) { "audit/grade_change/students/#{student_id}" }, method: "GET" },
     "QUERY_BY_GRADER" => { uri: ->(grader_id:) { "audit/grade_change/graders/#{grader_id}" }, method: "GET" },

     # Gradebook History
     "DAYS_IN_GRADEBOOK_HISTORY_FOR_THIS_COURSE" => { uri: ->(course_id:) { "courses/#{course_id}/gradebook_history/days" }, method: "GET" },
     "DETAILS_FOR_GIVEN_DATE_IN_GRADEBOOK_HISTORY_FOR_THIS_COURSE" => { uri: ->(course_id:, date:) { "courses/#{course_id}/gradebook_history/#{date}" }, method: "GET" },
     "LISTS_SUBMISSIONS" => { uri: ->(course_id:, date:, grader_id:, assignment_id:) { "courses/#{course_id}/gradebook_history/#{date}/graders/#{grader_id}/assignments/#{assignment_id}/submissions" }, method: "GET" },
     "LIST_UNCOLLATED_SUBMISSION_VERSIONS" => { uri: ->(course_id:) { "courses/#{course_id}/gradebook_history/feed" }, method: "GET" },

     # Grading Periods
     "LIST_GRADING_PERIODS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/grading_periods" }, method: "GET" },
     "LIST_GRADING_PERIODS_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/grading_periods" }, method: "GET" },
     "GET_SINGLE_GRADING_PERIOD_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/grading_periods/#{id}" }, method: "GET" },
     "GET_SINGLE_GRADING_PERIOD_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/grading_periods/#{id}" }, method: "GET" },
     "CREATE_SINGLE_GRADING_PERIOD_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/grading_periods" }, method: "POST" },
     "CREATE_SINGLE_GRADING_PERIOD_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/grading_periods" }, method: "POST" },
     "UPDATE_SINGLE_GRADING_PERIOD_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/grading_periods/#{id}" }, method: "PUT" },
     "UPDATE_SINGLE_GRADING_PERIOD_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/grading_periods/#{id}" }, method: "PUT" },
     "DELETE_GRADING_PERIOD_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/grading_periods/#{id}" }, method: "DELETE" },
     "DELETE_GRADING_PERIOD_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/grading_periods/#{id}" }, method: "DELETE" },

     # Grading Standards
     "CREATE_NEW_GRADING_STANDARD_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/grading_standards" }, method: "POST" },
     "CREATE_NEW_GRADING_STANDARD_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/grading_standards" }, method: "POST" },
     "LIST_GRADING_STANDARDS_AVAILABLE_IN_CONTEXT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/grading_standards" }, method: "GET" },
     "LIST_GRADING_STANDARDS_AVAILABLE_IN_CONTEXT_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/grading_standards" }, method: "GET" },

     # Group Categories
     "LIST_GROUP_CATEGORIES_FOR_CONTEXT_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/group_categories" }, method: "GET" },
     "LIST_GROUP_CATEGORIES_FOR_CONTEXT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/group_categories" }, method: "GET" },
     "GET_SINGLE_GROUP_CATEGORY" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}" }, method: "GET" },
     "CREATE_GROUP_CATEGORY_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/group_categories" }, method: "POST" },
     "CREATE_GROUP_CATEGORY_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/group_categories" }, method: "POST" },
     "UPDATE_GROUP_CATEGORY" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}" }, method: "PUT" },
     "DELETE_GROUP_CATEGORY" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}" }, method: "DELETE" },
     "LIST_GROUPS_IN_GROUP_CATEGORY" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}/groups" }, method: "GET" },
     "LIST_USERS_IN_GROUP_CATEGORY" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}/users" }, method: "GET" },
     "ASSIGN_UNASSIGNED_MEMBERS" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}/assign_unassigned_members" }, method: "POST" },

     # Groups
     "LIST_YOUR_GROUPS" => { uri: ->() { "users/self/groups" }, method: "GET" },
     "LIST_GROUPS_AVAILABLE_IN_CONTEXT_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/groups" }, method: "GET" },
     "LIST_GROUPS_AVAILABLE_IN_CONTEXT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/groups" }, method: "GET" },
     "GET_SINGLE_GROUP" => { uri: ->(group_id:) { "groups/#{group_id}" }, method: "GET" },
     "CREATE_GROUP_GROUPS" => { uri: ->() { "groups" }, method: "POST" },
     "CREATE_GROUP_GROUP_CATEGORIES" => { uri: ->(group_category_id:) { "group_categories/#{group_category_id}/groups" }, method: "POST" },
     "EDIT_GROUP" => { uri: ->(group_id:) { "groups/#{group_id}" }, method: "PUT" },
     "DELETE_GROUP" => { uri: ->(group_id:) { "groups/#{group_id}" }, method: "DELETE" },
     "INVITE_OTHERS_TO_GROUP" => { uri: ->(group_id:) { "groups/#{group_id}/invite" }, method: "POST" },
     "LIST_GROUP_S_USERS" => { uri: ->(group_id:) { "groups/#{group_id}/users" }, method: "GET" },
     "GROUP_ACTIVITY_STREAM" => { uri: ->(group_id:) { "groups/#{group_id}/activity_stream" }, method: "GET" },
     "GROUP_ACTIVITY_STREAM_SUMMARY" => { uri: ->(group_id:) { "groups/#{group_id}/activity_stream/summary" }, method: "GET" },
     "LIST_GROUP_MEMBERSHIPS" => { uri: ->(group_id:) { "groups/#{group_id}/memberships" }, method: "GET" },
     "GET_SINGLE_GROUP_MEMBERSHIP_MEMBERSHIPS" => { uri: ->(group_id:, membership_id:) { "groups/#{group_id}/memberships/#{membership_id}" }, method: "GET" },
     "GET_SINGLE_GROUP_MEMBERSHIP_USERS" => { uri: ->(group_id:, user_id:) { "groups/#{group_id}/users/#{user_id}" }, method: "GET" },
     "CREATE_MEMBERSHIP" => { uri: ->(group_id:) { "groups/#{group_id}/memberships" }, method: "POST" },
     "UPDATE_MEMBERSHIP_MEMBERSHIPS" => { uri: ->(group_id:, membership_id:) { "groups/#{group_id}/memberships/#{membership_id}" }, method: "PUT" },
     "UPDATE_MEMBERSHIP_USERS" => { uri: ->(group_id:, user_id:) { "groups/#{group_id}/users/#{user_id}" }, method: "PUT" },
     "LEAVE_GROUP_MEMBERSHIPS" => { uri: ->(group_id:, membership_id:) { "groups/#{group_id}/memberships/#{membership_id}" }, method: "DELETE" },
     "LEAVE_GROUP_USERS" => { uri: ->(group_id:, user_id:) { "groups/#{group_id}/users/#{user_id}" }, method: "DELETE" },

     # JWTs
     "CREATE_JWT" => { uri: ->() { "jwts" }, method: "POST" },

     # LiveAssessments
     "CREATE_LIVE_ASSESSMENT_RESULTS" => { uri: ->(course_id:, assessment_id:) { "courses/#{course_id}/live_assessments/#{assessment_id}/results" }, method: "POST" },
     "LIST_LIVE_ASSESSMENT_RESULTS" => { uri: ->(course_id:, assessment_id:) { "courses/#{course_id}/live_assessments/#{assessment_id}/results" }, method: "GET" },
     "CREATE_OR_FIND_LIVE_ASSESSMENT" => { uri: ->(course_id:) { "courses/#{course_id}/live_assessments" }, method: "POST" },
     "LIST_LIVE_ASSESSMENTS" => { uri: ->(course_id:) { "courses/#{course_id}/live_assessments" }, method: "GET" },

     # Logins
     "LIST_USER_LOGINS_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/logins" }, method: "GET" },
     "LIST_USER_LOGINS_USERS" => { uri: ->(user_id:) { "users/#{user_id}/logins" }, method: "GET" },
     "CREATE_USER_LOGIN" => { uri: ->(account_id:) { "accounts/#{account_id}/logins" }, method: "POST" },
     "EDIT_USER_LOGIN" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/logins/#{id}" }, method: "PUT" },
     "DELETE_USER_LOGIN" => { uri: ->(user_id:, id:) { "users/#{user_id}/logins/#{id}" }, method: "DELETE" },

     # Moderated Grading
     "LIST_STUDENTS_SELECTED_FOR_MODERATION" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/moderated_students" }, method: "GET" },
     "SELECT_STUDENTS_FOR_MODERATION" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/moderated_students" }, method: "POST" },
     "SHOW_PROVISIONAL_GRADE_STATUS_FOR_STUDENT" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/provisional_grades/status" }, method: "GET" },
     "SELECT_PROVISIONAL_GRADE" => { uri: ->(course_id:, assignment_id:, provisional_grade_id:) { "courses/#{course_id}/assignments/#{assignment_id}/provisional_grades/#{provisional_grade_id}/select" }, method: "PUT" },
     "COPY_PROVISIONAL_GRADE" => { uri: ->(course_id:, assignment_id:, provisional_grade_id:) { "courses/#{course_id}/assignments/#{assignment_id}/provisional_grades/#{provisional_grade_id}/copy_to_final_mark" }, method: "POST" },
     "PUBLISH_PROVISIONAL_GRADES_FOR_ASSIGNMENT" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/provisional_grades/publish" }, method: "POST" },

     # Modules
     "LIST_MODULES" => { uri: ->(course_id:) { "courses/#{course_id}/modules" }, method: "GET" },
     "SHOW_MODULE" => { uri: ->(course_id:, id:) { "courses/#{course_id}/modules/#{id}" }, method: "GET" },
     "CREATE_MODULE" => { uri: ->(course_id:) { "courses/#{course_id}/modules" }, method: "POST" },
     "UPDATE_MODULE" => { uri: ->(course_id:, id:) { "courses/#{course_id}/modules/#{id}" }, method: "PUT" },
     "DELETE_MODULE" => { uri: ->(course_id:, id:) { "courses/#{course_id}/modules/#{id}" }, method: "DELETE" },
     "RE_LOCK_MODULE_PROGRESSIONS" => { uri: ->(course_id:, id:) { "courses/#{course_id}/modules/#{id}/relock" }, method: "PUT" },
     "LIST_MODULE_ITEMS" => { uri: ->(course_id:, module_id:) { "courses/#{course_id}/modules/#{module_id}/items" }, method: "GET" },
     "SHOW_MODULE_ITEM" => { uri: ->(course_id:, module_id:, id:) { "courses/#{course_id}/modules/#{module_id}/items/#{id}" }, method: "GET" },
     "CREATE_MODULE_ITEM" => { uri: ->(course_id:, module_id:) { "courses/#{course_id}/modules/#{module_id}/items" }, method: "POST" },
     "UPDATE_MODULE_ITEM" => { uri: ->(course_id:, module_id:, id:) { "courses/#{course_id}/modules/#{module_id}/items/#{id}" }, method: "PUT" },
     "DELETE_MODULE_ITEM" => { uri: ->(course_id:, module_id:, id:) { "courses/#{course_id}/modules/#{module_id}/items/#{id}" }, method: "DELETE" },
     "MARK_MODULE_ITEM_AS_DONE_NOT_DONE" => { uri: ->(course_id:, module_id:, id:) { "courses/#{course_id}/modules/#{module_id}/items/#{id}/done" }, method: "PUT" },
     "GET_MODULE_ITEM_SEQUENCE" => { uri: ->(course_id:) { "courses/#{course_id}/module_item_sequence" }, method: "GET" },
     "MARK_MODULE_ITEM_READ" => { uri: ->(course_id:, module_id:, id:) { "courses/#{course_id}/modules/#{module_id}/items/#{id}/mark_read" }, method: "POST" },

     # Notification Preferences
     "LIST_PREFERENCES_COMMUNICATION_CHANNEL_ID" => { uri: ->(user_id:, communication_channel_id:) { "users/#{user_id}/communication_channels/#{communication_channel_id}/notification_preferences" }, method: "GET" },
     "LIST_PREFERENCES_TYPE" => { uri: ->(user_id:, type:, address:) { "users/#{user_id}/communication_channels/#{type}/#{address}/notification_preferences" }, method: "GET" },
     "LIST_OF_PREFERENCE_CATEGORIES" => { uri: ->(user_id:, communication_channel_id:) { "users/#{user_id}/communication_channels/#{communication_channel_id}/notification_preference_categories" }, method: "GET" },
     "GET_PREFERENCE_COMMUNICATION_CHANNEL_ID" => { uri: ->(user_id:, communication_channel_id:, notification:) { "users/#{user_id}/communication_channels/#{communication_channel_id}/notification_preferences/#{notification}" }, method: "GET" },
     "GET_PREFERENCE_TYPE" => { uri: ->(user_id:, type:, address:, notification:) { "users/#{user_id}/communication_channels/#{type}/#{address}/notification_preferences/#{notification}" }, method: "GET" },
     "UPDATE_PREFERENCE_COMMUNICATION_CHANNEL_ID" => { uri: ->(communication_channel_id:, notification:) { "users/self/communication_channels/#{communication_channel_id}/notification_preferences/#{notification}" }, method: "PUT" },
     "UPDATE_PREFERENCE_TYPE" => { uri: ->(type:, address:, notification:) { "users/self/communication_channels/#{type}/#{address}/notification_preferences/#{notification}" }, method: "PUT" },
     "UPDATE_PREFERENCES_BY_CATEGORY" => { uri: ->(communication_channel_id:, category:) { "users/self/communication_channels/#{communication_channel_id}/notification_preference_categories/#{category}" }, method: "PUT" },
     "UPDATE_MULTIPLE_PREFERENCES_COMMUNICATION_CHANNEL_ID" => { uri: ->(communication_channel_id:) { "users/self/communication_channels/#{communication_channel_id}/notification_preferences" }, method: "PUT" },
     "UPDATE_MULTIPLE_PREFERENCES_TYPE" => { uri: ->(type:, address:) { "users/self/communication_channels/#{type}/#{address}/notification_preferences" }, method: "PUT" },

     # Outcome Groups
     "REDIRECT_TO_ROOT_OUTCOME_GROUP_FOR_CONTEXT_GLOBAL" => { uri: ->() { "global/root_outcome_group" }, method: "GET" },
     "REDIRECT_TO_ROOT_OUTCOME_GROUP_FOR_CONTEXT_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/root_outcome_group" }, method: "GET" },
     "REDIRECT_TO_ROOT_OUTCOME_GROUP_FOR_CONTEXT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/root_outcome_group" }, method: "GET" },
     "GET_ALL_OUTCOME_GROUPS_FOR_CONTEXT_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/outcome_groups" }, method: "GET" },
     "GET_ALL_OUTCOME_GROUPS_FOR_CONTEXT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/outcome_groups" }, method: "GET" },
     "GET_ALL_OUTCOME_LINKS_FOR_CONTEXT_ACCOUNTS" => { uri: ->(account_id:) { "accounts/#{account_id}/outcome_group_links" }, method: "GET" },
     "GET_ALL_OUTCOME_LINKS_FOR_CONTEXT_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/outcome_group_links" }, method: "GET" },
     "SHOW_OUTCOME_GROUP_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}" }, method: "GET" },
     "SHOW_OUTCOME_GROUP_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}" }, method: "GET" },
     "SHOW_OUTCOME_GROUP_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}" }, method: "GET" },
     "UPDATE_OUTCOME_GROUP_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}" }, method: "PUT" },
     "UPDATE_OUTCOME_GROUP_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}" }, method: "PUT" },
     "UPDATE_OUTCOME_GROUP_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}" }, method: "PUT" },
     "DELETE_OUTCOME_GROUP_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}" }, method: "DELETE" },
     "DELETE_OUTCOME_GROUP_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}" }, method: "DELETE" },
     "DELETE_OUTCOME_GROUP_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}" }, method: "DELETE" },
     "LIST_LINKED_OUTCOMES_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}/outcomes" }, method: "GET" },
     "LIST_LINKED_OUTCOMES_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}/outcomes" }, method: "GET" },
     "LIST_LINKED_OUTCOMES_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}/outcomes" }, method: "GET" },
     "CREATE_LINK_OUTCOME_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}/outcomes" }, method: "POST" },
     "CREATE_LINK_OUTCOME_GLOBAL_OUTCOME_ID" => { uri: ->(id:, outcome_id:) { "global/outcome_groups/#{id}/outcomes/#{outcome_id}" }, method: "PUT" },
     "CREATE_LINK_OUTCOME_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}/outcomes" }, method: "POST" },
     "CREATE_LINK_OUTCOME_ACCOUNTS_OUTCOME_ID" => { uri: ->(account_id:, id:, outcome_id:) { "accounts/#{account_id}/outcome_groups/#{id}/outcomes/#{outcome_id}" }, method: "PUT" },
     "CREATE_LINK_OUTCOME_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}/outcomes" }, method: "POST" },
     "CREATE_LINK_OUTCOME_COURSES_OUTCOME_ID" => { uri: ->(course_id:, id:, outcome_id:) { "courses/#{course_id}/outcome_groups/#{id}/outcomes/#{outcome_id}" }, method: "PUT" },
     "UNLINK_OUTCOME_GLOBAL" => { uri: ->(id:, outcome_id:) { "global/outcome_groups/#{id}/outcomes/#{outcome_id}" }, method: "DELETE" },
     "UNLINK_OUTCOME_ACCOUNTS" => { uri: ->(account_id:, id:, outcome_id:) { "accounts/#{account_id}/outcome_groups/#{id}/outcomes/#{outcome_id}" }, method: "DELETE" },
     "UNLINK_OUTCOME_COURSES" => { uri: ->(course_id:, id:, outcome_id:) { "courses/#{course_id}/outcome_groups/#{id}/outcomes/#{outcome_id}" }, method: "DELETE" },
     "LIST_SUBGROUPS_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}/subgroups" }, method: "GET" },
     "LIST_SUBGROUPS_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}/subgroups" }, method: "GET" },
     "LIST_SUBGROUPS_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}/subgroups" }, method: "GET" },
     "CREATE_SUBGROUP_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}/subgroups" }, method: "POST" },
     "CREATE_SUBGROUP_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}/subgroups" }, method: "POST" },
     "CREATE_SUBGROUP_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}/subgroups" }, method: "POST" },
     "IMPORT_OUTCOME_GROUP_GLOBAL" => { uri: ->(id:) { "global/outcome_groups/#{id}/import" }, method: "POST" },
     "IMPORT_OUTCOME_GROUP_ACCOUNTS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/outcome_groups/#{id}/import" }, method: "POST" },
     "IMPORT_OUTCOME_GROUP_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/outcome_groups/#{id}/import" }, method: "POST" },

     # Outcome Results
     "GET_OUTCOME_RESULTS" => { uri: ->(course_id:) { "courses/#{course_id}/outcome_results" }, method: "GET" },
     "GET_OUTCOME_RESULT_ROLLUPS" => { uri: ->(course_id:) { "courses/#{course_id}/outcome_rollups" }, method: "GET" },

     # Outcomes
     "SHOW_OUTCOME" => { uri: ->(id:) { "outcomes/#{id}" }, method: "GET" },
     "UPDATE_OUTCOME" => { uri: ->(id:) { "outcomes/#{id}" }, method: "PUT" },

     # Pages
     "SHOW_FRONT_PAGE_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/front_page" }, method: "GET" },
     "SHOW_FRONT_PAGE_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/front_page" }, method: "GET" },
     "UPDATE_CREATE_FRONT_PAGE_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/front_page" }, method: "PUT" },
     "UPDATE_CREATE_FRONT_PAGE_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/front_page" }, method: "PUT" },
     "LIST_PAGES_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/pages" }, method: "GET" },
     "LIST_PAGES_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/pages" }, method: "GET" },
     "CREATE_PAGE_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/pages" }, method: "POST" },
     "CREATE_PAGE_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/pages" }, method: "POST" },
     "SHOW_PAGE_COURSES" => { uri: ->(course_id:, url:) { "courses/#{course_id}/pages/#{url}" }, method: "GET" },
     "SHOW_PAGE_GROUPS" => { uri: ->(group_id:, url:) { "groups/#{group_id}/pages/#{url}" }, method: "GET" },
     "UPDATE_CREATE_PAGE_COURSES" => { uri: ->(course_id:, url:) { "courses/#{course_id}/pages/#{url}" }, method: "PUT" },
     "UPDATE_CREATE_PAGE_GROUPS" => { uri: ->(group_id:, url:) { "groups/#{group_id}/pages/#{url}" }, method: "PUT" },
     "DELETE_PAGE_COURSES" => { uri: ->(course_id:, url:) { "courses/#{course_id}/pages/#{url}" }, method: "DELETE" },
     "DELETE_PAGE_GROUPS" => { uri: ->(group_id:, url:) { "groups/#{group_id}/pages/#{url}" }, method: "DELETE" },
     "LIST_REVISIONS_COURSES" => { uri: ->(course_id:, url:) { "courses/#{course_id}/pages/#{url}/revisions" }, method: "GET" },
     "LIST_REVISIONS_GROUPS" => { uri: ->(group_id:, url:) { "groups/#{group_id}/pages/#{url}/revisions" }, method: "GET" },
     "SHOW_REVISION_COURSES_LATEST" => { uri: ->(course_id:, url:) { "courses/#{course_id}/pages/#{url}/revisions/latest" }, method: "GET" },
     "SHOW_REVISION_GROUPS_LATEST" => { uri: ->(group_id:, url:) { "groups/#{group_id}/pages/#{url}/revisions/latest" }, method: "GET" },
     "SHOW_REVISION_COURSES_REVISION_ID" => { uri: ->(course_id:, url:, revision_id:) { "courses/#{course_id}/pages/#{url}/revisions/#{revision_id}" }, method: "GET" },
     "SHOW_REVISION_GROUPS_REVISION_ID" => { uri: ->(group_id:, url:, revision_id:) { "groups/#{group_id}/pages/#{url}/revisions/#{revision_id}" }, method: "GET" },
     "REVERT_TO_REVISION_COURSES" => { uri: ->(course_id:, url:, revision_id:) { "courses/#{course_id}/pages/#{url}/revisions/#{revision_id}" }, method: "POST" },
     "REVERT_TO_REVISION_GROUPS" => { uri: ->(group_id:, url:, revision_id:) { "groups/#{group_id}/pages/#{url}/revisions/#{revision_id}" }, method: "POST" },

     # Peer Reviews
     "GET_ALL_PEER_REVIEWS_COURSES_PEER_REVIEWS" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/peer_reviews" }, method: "GET" },
     "GET_ALL_PEER_REVIEWS_SECTIONS_PEER_REVIEWS" => { uri: ->(section_id:, assignment_id:) { "sections/#{section_id}/assignments/#{assignment_id}/peer_reviews" }, method: "GET" },
     "GET_ALL_PEER_REVIEWS_COURSES_SUBMISSIONS" => { uri: ->(course_id:, assignment_id:, submission_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{submission_id}/peer_reviews" }, method: "GET" },
     "GET_ALL_PEER_REVIEWS_SECTIONS_SUBMISSIONS" => { uri: ->(section_id:, assignment_id:, submission_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{submission_id}/peer_reviews" }, method: "GET" },
     "CREATE_PEER_REVIEW_COURSES" => { uri: ->(course_id:, assignment_id:, submission_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{submission_id}/peer_reviews" }, method: "POST" },
     "CREATE_PEER_REVIEW_SECTIONS" => { uri: ->(section_id:, assignment_id:, submission_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{submission_id}/peer_reviews" }, method: "POST" },

     # Poll Sessions
     "LIST_POLL_SESSIONS_FOR_POLL" => { uri: ->(poll_id:) { "polls/#{poll_id}/poll_sessions" }, method: "GET" },
     "GET_RESULTS_FOR_SINGLE_POLL_SESSION" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_sessions/#{id}" }, method: "GET" },
     "CREATE_SINGLE_POLL_SESSION" => { uri: ->(poll_id:) { "polls/#{poll_id}/poll_sessions" }, method: "POST" },
     "UPDATE_SINGLE_POLL_SESSION" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_sessions/#{id}" }, method: "PUT" },
     "DELETE_POLL_SESSION" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_sessions/#{id}" }, method: "DELETE" },
     "OPEN_POLL_SESSION" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_sessions/#{id}/open" }, method: "GET" },
     "CLOSE_OPENED_POLL_SESSION" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_sessions/#{id}/close" }, method: "GET" },
     "LIST_OPENED_POLL_SESSIONS" => { uri: ->() { "poll_sessions/opened" }, method: "GET" },
     "LIST_CLOSED_POLL_SESSIONS" => { uri: ->() { "poll_sessions/closed" }, method: "GET" },

     # PollChoices
     "LIST_POLL_CHOICES_IN_POLL" => { uri: ->(poll_id:) { "polls/#{poll_id}/poll_choices" }, method: "GET" },
     "GET_SINGLE_POLL_CHOICE" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_choices/#{id}" }, method: "GET" },
     "CREATE_SINGLE_POLL_CHOICE" => { uri: ->(poll_id:) { "polls/#{poll_id}/poll_choices" }, method: "POST" },
     "UPDATE_SINGLE_POLL_CHOICE" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_choices/#{id}" }, method: "PUT" },
     "DELETE_POLL_CHOICE" => { uri: ->(poll_id:, id:) { "polls/#{poll_id}/poll_choices/#{id}" }, method: "DELETE" },

     # PollSubmissions
     "GET_SINGLE_POLL_SUBMISSION" => { uri: ->(poll_id:, poll_session_id:, id:) { "polls/#{poll_id}/poll_sessions/#{poll_session_id}/poll_submissions/#{id}" }, method: "GET" },
     "CREATE_SINGLE_POLL_SUBMISSION" => { uri: ->(poll_id:, poll_session_id:) { "polls/#{poll_id}/poll_sessions/#{poll_session_id}/poll_submissions" }, method: "POST" },

     # Polls
     "LIST_POLLS" => { uri: ->() { "polls" }, method: "GET" },
     "GET_SINGLE_POLL" => { uri: ->(id:) { "polls/#{id}" }, method: "GET" },
     "CREATE_SINGLE_POLL" => { uri: ->() { "polls" }, method: "POST" },
     "UPDATE_SINGLE_POLL" => { uri: ->(id:) { "polls/#{id}" }, method: "PUT" },
     "DELETE_POLL" => { uri: ->(id:) { "polls/#{id}" }, method: "DELETE" },

     # Progress
     "QUERY_PROGRESS" => { uri: ->(id:) { "progress/#{id}" }, method: "GET" },

     # Quiz Assignment Overrides
     "RETRIEVE_ASSIGNMENT_OVERRIDDEN_DATES_FOR_QUIZZES" => { uri: ->(course_id:) { "courses/#{course_id}/quizzes/assignment_overrides" }, method: "GET" },

     # Quiz Extensions

     # Quiz IP Filters
     "GET_AVAILABLE_QUIZ_IP_FILTERS" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/ip_filters" }, method: "GET" },

     # Quiz Question Groups
     "GET_SINGLE_QUIZ_GROUP" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/groups/#{id}" }, method: "GET" },
     "CREATE_QUESTION_GROUP" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/groups" }, method: "POST" },
     "UPDATE_QUESTION_GROUP" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/groups/#{id}" }, method: "PUT" },
     "DELETE_QUESTION_GROUP" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/groups/#{id}" }, method: "DELETE" },
     "REORDER_QUESTION_GROUPS" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/groups/#{id}/reorder" }, method: "POST" },

     # Quiz Questions
     "LIST_QUESTIONS_IN_QUIZ_OR_SUBMISSION" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/questions" }, method: "GET" },
     "GET_SINGLE_QUIZ_QUESTION" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/questions/#{id}" }, method: "GET" },
     "CREATE_SINGLE_QUIZ_QUESTION" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/questions" }, method: "POST" },
     "UPDATE_EXISTING_QUIZ_QUESTION" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/questions/#{id}" }, method: "PUT" },
     "DELETE_QUIZ_QUESTION" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/questions/#{id}" }, method: "DELETE" },

     # Quiz Reports
     "RETRIEVE_ALL_QUIZ_REPORTS" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/reports" }, method: "GET" },
     "CREATE_QUIZ_REPORT" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/reports" }, method: "POST" },
     "GET_QUIZ_REPORT" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/reports/#{id}" }, method: "GET" },
     "ABORT_GENERATION_OF_REPORT_OR_REMOVE_PREVIOUSLY_GENERATED_ONE" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/reports/#{id}" }, method: "DELETE" },

     # Quiz Statistics
     "FETCHING_LATEST_QUIZ_STATISTICS" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/statistics" }, method: "GET" },

     # Quiz Submission Events
     "SUBMIT_CAPTURED_EVENTS" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions/#{id}/events" }, method: "POST" },
     "RETRIEVE_CAPTURED_EVENTS" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions/#{id}/events" }, method: "GET" },

     # Quiz Submission Files

     # Quiz Submission Questions
     "GET_ALL_QUIZ_SUBMISSION_QUESTIONS" => { uri: ->(quiz_submission_id:) { "quiz_submissions/#{quiz_submission_id}/questions" }, method: "GET" },
     "ANSWERING_QUESTIONS" => { uri: ->(quiz_submission_id:) { "quiz_submissions/#{quiz_submission_id}/questions" }, method: "POST" },
     "FLAGGING_QUESTION" => { uri: ->(quiz_submission_id:, id:) { "quiz_submissions/#{quiz_submission_id}/questions/#{id}/flag" }, method: "PUT" },
     "UNFLAGGING_QUESTION" => { uri: ->(quiz_submission_id:, id:) { "quiz_submissions/#{quiz_submission_id}/questions/#{id}/unflag" }, method: "PUT" },

     # Quiz Submission User List
     "SEND_MESSAGE_TO_UNSUBMITTED_OR_SUBMITTED_USERS_FOR_QUIZ" => { uri: ->(course_id:, id:) { "courses/#{course_id}/quizzes/#{id}/submission_users/message" }, method: "POST" },

     # Quiz Submissions
     "GET_ALL_QUIZ_SUBMISSIONS" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions" }, method: "GET" },
     "GET_SINGLE_QUIZ_SUBMISSION" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions/#{id}" }, method: "GET" },
     "CREATE_QUIZ_SUBMISSION_START_QUIZ_TAKING_SESSION" => { uri: ->(course_id:, quiz_id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions" }, method: "POST" },
     "UPDATE_STUDENT_QUESTION_SCORES_AND_COMMENTS" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions/#{id}" }, method: "PUT" },
     "COMPLETE_QUIZ_SUBMISSION_TURN_IT_IN" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions/#{id}/complete" }, method: "POST" },
     "GET_CURRENT_QUIZ_SUBMISSION_TIMES" => { uri: ->(course_id:, quiz_id:, id:) { "courses/#{course_id}/quizzes/#{quiz_id}/submissions/#{id}/time" }, method: "GET" },

     # Quizzes
     "LIST_QUIZZES_IN_COURSE" => { uri: ->(course_id:) { "courses/#{course_id}/quizzes" }, method: "GET" },
     "GET_SINGLE_QUIZ" => { uri: ->(course_id:, id:) { "courses/#{course_id}/quizzes/#{id}" }, method: "GET" },
     "CREATE_QUIZ" => { uri: ->(course_id:) { "courses/#{course_id}/quizzes" }, method: "POST" },
     "EDIT_QUIZ" => { uri: ->(course_id:, id:) { "courses/#{course_id}/quizzes/#{id}" }, method: "PUT" },
     "DELETE_QUIZ" => { uri: ->(course_id:, id:) { "courses/#{course_id}/quizzes/#{id}" }, method: "DELETE" },
     "REORDER_QUIZ_ITEMS" => { uri: ->(course_id:, id:) { "courses/#{course_id}/quizzes/#{id}/reorder" }, method: "POST" },
     "VALIDATE_QUIZ_ACCESS_CODE" => { uri: ->(course_id:, id:) { "courses/#{course_id}/quizzes/#{id}/validate_access_code" }, method: "POST" },

     # Roles
     "LIST_ROLES" => { uri: ->(account_id:) { "accounts/#{account_id}/roles" }, method: "GET" },
     "GET_SINGLE_ROLE" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/roles/#{id}" }, method: "GET" },
     "CREATE_NEW_ROLE" => { uri: ->(account_id:) { "accounts/#{account_id}/roles" }, method: "POST" },
     "DEACTIVATE_ROLE" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/roles/#{id}" }, method: "DELETE" },
     "ACTIVATE_ROLE" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/roles/#{id}/activate" }, method: "POST" },
     "UPDATE_ROLE" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/roles/#{id}" }, method: "PUT" },

     # SIS Imports
     "GET_SIS_IMPORT_LIST" => { uri: ->(account_id:) { "accounts/#{account_id}/sis_imports" }, method: "GET" },
     "IMPORT_SIS_DATA" => { uri: ->(account_id:) { "accounts/#{account_id}/sis_imports" }, method: "POST" },
     "GET_SIS_IMPORT_STATUS" => { uri: ->(account_id:, id:) { "accounts/#{account_id}/sis_imports/#{id}" }, method: "GET" },

     # SIS Integration
     "RETRIEVE_ASSIGNMENTS_ENABLED_FOR_GRADE_EXPORT_TO_SIS_ACCOUNTS" => { uri: ->(account_id:) { "/sis/accounts/#{account_id}/assignments" }, method: "GET" },
     "RETRIEVE_ASSIGNMENTS_ENABLED_FOR_GRADE_EXPORT_TO_SIS_COURSES" => { uri: ->(course_id:) { "/sis/courses/#{course_id}/assignments" }, method: "GET" },

     # Search
     "FIND_RECIPIENTS_CONVERSATIONS" => { uri: ->() { "conversations/find_recipients" }, method: "GET" },
     "FIND_RECIPIENTS_SEARCH" => { uri: ->() { "search/recipients" }, method: "GET" },
     "LIST_ALL_COURSES" => { uri: ->() { "search/all_courses" }, method: "GET" },

     # Sections
     "LIST_COURSE_SECTIONS" => { uri: ->(course_id:) { "courses/#{course_id}/sections" }, method: "GET" },
     "CREATE_COURSE_SECTION" => { uri: ->(course_id:) { "courses/#{course_id}/sections" }, method: "POST" },
     "CROSS_LIST_SECTION" => { uri: ->(id:, new_course_id:) { "sections/#{id}/crosslist/#{new_course_id}" }, method: "POST" },
     "DE_CROSS_LIST_SECTION" => { uri: ->(id:) { "sections/#{id}/crosslist" }, method: "DELETE" },
     "EDIT_SECTION" => { uri: ->(id:) { "sections/#{id}" }, method: "PUT" },
     "GET_SECTION_INFORMATION_COURSES" => { uri: ->(course_id:, id:) { "courses/#{course_id}/sections/#{id}" }, method: "GET" },
     "GET_SECTION_INFORMATION_SECTIONS" => { uri: ->(id:) { "sections/#{id}" }, method: "GET" },
     "DELETE_SECTION" => { uri: ->(id:) { "sections/#{id}" }, method: "DELETE" },

     # Services
     "GET_KALTURA_CONFIG" => { uri: ->() { "services/kaltura" }, method: "GET" },
     "START_KALTURA_SESSION" => { uri: ->() { "services/kaltura_session" }, method: "POST" },

     # Submission Comments

     # Submissions
     "SUBMIT_ASSIGNMENT_COURSES" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions" }, method: "POST" },
     "SUBMIT_ASSIGNMENT_SECTIONS" => { uri: ->(section_id:, assignment_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions" }, method: "POST" },
     "LIST_ASSIGNMENT_SUBMISSIONS_COURSES" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions" }, method: "GET" },
     "LIST_ASSIGNMENT_SUBMISSIONS_SECTIONS" => { uri: ->(section_id:, assignment_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions" }, method: "GET" },
     "LIST_SUBMISSIONS_FOR_MULTIPLE_ASSIGNMENTS_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/students/submissions" }, method: "GET" },
     "LIST_SUBMISSIONS_FOR_MULTIPLE_ASSIGNMENTS_SECTIONS" => { uri: ->(section_id:) { "sections/#{section_id}/students/submissions" }, method: "GET" },
     "GET_SINGLE_SUBMISSION_COURSES" => { uri: ->(course_id:, assignment_id:, user_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{user_id}" }, method: "GET" },
     "GET_SINGLE_SUBMISSION_SECTIONS" => { uri: ->(section_id:, assignment_id:, user_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{user_id}" }, method: "GET" },
     "UPLOAD_FILE_COURSES" => { uri: ->(course_id:, assignment_id:, user_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{user_id}/files" }, method: "POST" },
     "UPLOAD_FILE_SECTIONS" => { uri: ->(section_id:, assignment_id:, user_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{user_id}/files" }, method: "POST" },
     "GRADE_OR_COMMENT_ON_SUBMISSION_COURSES" => { uri: ->(course_id:, assignment_id:, user_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{user_id}" }, method: "PUT" },
     "GRADE_OR_COMMENT_ON_SUBMISSION_SECTIONS" => { uri: ->(section_id:, assignment_id:, user_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{user_id}" }, method: "PUT" },
     "LIST_GRADEABLE_STUDENTS" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/gradeable_students" }, method: "GET" },
     "GRADE_OR_COMMENT_ON_MULTIPLE_SUBMISSIONS_COURSES_SUBMISSIONS" => { uri: ->(course_id:) { "courses/#{course_id}/submissions/update_grades" }, method: "POST" },
     "GRADE_OR_COMMENT_ON_MULTIPLE_SUBMISSIONS_COURSES_ASSIGNMENTS" => { uri: ->(course_id:, assignment_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/update_grades" }, method: "POST" },
     "GRADE_OR_COMMENT_ON_MULTIPLE_SUBMISSIONS_SECTIONS_SUBMISSIONS" => { uri: ->(section_id:) { "sections/#{section_id}/submissions/update_grades" }, method: "POST" },
     "GRADE_OR_COMMENT_ON_MULTIPLE_SUBMISSIONS_SECTIONS_ASSIGNMENTS" => { uri: ->(section_id:, assignment_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/update_grades" }, method: "POST" },
     "MARK_SUBMISSION_AS_READ_COURSES" => { uri: ->(course_id:, assignment_id:, user_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{user_id}/read" }, method: "PUT" },
     "MARK_SUBMISSION_AS_READ_SECTIONS" => { uri: ->(section_id:, assignment_id:, user_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{user_id}/read" }, method: "PUT" },
     "MARK_SUBMISSION_AS_UNREAD_COURSES" => { uri: ->(course_id:, assignment_id:, user_id:) { "courses/#{course_id}/assignments/#{assignment_id}/submissions/#{user_id}/read" }, method: "DELETE" },
     "MARK_SUBMISSION_AS_UNREAD_SECTIONS" => { uri: ->(section_id:, assignment_id:, user_id:) { "sections/#{section_id}/assignments/#{assignment_id}/submissions/#{user_id}/read" }, method: "DELETE" },

     # Tabs
     "LIST_AVAILABLE_TABS_FOR_COURSE_OR_GROUP_COURSES" => { uri: ->(course_id:) { "courses/#{course_id}/tabs" }, method: "GET" },
     "LIST_AVAILABLE_TABS_FOR_COURSE_OR_GROUP_GROUPS" => { uri: ->(group_id:) { "groups/#{group_id}/tabs" }, method: "GET" },
     "UPDATE_TAB_FOR_COURSE" => { uri: ->(course_id:, tab_id:) { "courses/#{course_id}/tabs/#{tab_id}" }, method: "PUT" },

     # User Observees
     "LIST_OBSERVEES" => { uri: ->(user_id:) { "users/#{user_id}/observees" }, method: "GET" },
     "ADD_OBSERVEE_WITH_CREDENTIALS" => { uri: ->(user_id:) { "users/#{user_id}/observees" }, method: "POST" },
     "SHOW_OBSERVEE" => { uri: ->(user_id:, observee_id:) { "users/#{user_id}/observees/#{observee_id}" }, method: "GET" },
     "ADD_OBSERVEE" => { uri: ->(user_id:, observee_id:) { "users/#{user_id}/observees/#{observee_id}" }, method: "PUT" },
     "REMOVE_OBSERVEE" => { uri: ->(user_id:, observee_id:) { "users/#{user_id}/observees/#{observee_id}" }, method: "DELETE" },

     # Users
     "LIST_USERS_IN_ACCOUNT" => { uri: ->(account_id:) { "accounts/#{account_id}/users" }, method: "GET" },
     "LIST_ACTIVITY_STREAM_SELF" => { uri: ->() { "users/self/activity_stream" }, method: "GET" },
     "LIST_ACTIVITY_STREAM_ACTIVITY_STREAM" => { uri: ->() { "users/activity_stream" }, method: "GET" },
     "ACTIVITY_STREAM_SUMMARY" => { uri: ->() { "users/self/activity_stream/summary" }, method: "GET" },
     "LIST_TODO_ITEMS" => { uri: ->() { "users/self/todo" }, method: "GET" },
     "LIST_UPCOMING_ASSIGNMENTS_CALENDAR_EVENTS" => { uri: ->() { "users/self/upcoming_events" }, method: "GET" },
     "LIST_MISSING_SUBMISSIONS" => { uri: ->(user_id:) { "users/#{user_id}/missing_submissions" }, method: "GET" },
     "HIDE_STREAM_ITEM" => { uri: ->(id:) { "users/self/activity_stream/#{id}" }, method: "DELETE" },
     "HIDE_ALL_STREAM_ITEMS" => { uri: ->() { "users/self/activity_stream" }, method: "DELETE" },
     "SHOW_USER_DETAILS" => { uri: ->(id:) { "users/#{id}" }, method: "GET" },
     "CREATE_USER" => { uri: ->(account_id:) { "accounts/#{account_id}/users" }, method: "POST" },
     "SELF_REGISTER_USER" => { uri: ->(account_id:) { "accounts/#{account_id}/self_registration" }, method: "POST" },
     "UPDATE_USER_SETTINGS" => { uri: ->(id:) { "users/#{id}/settings" }, method: "GET" },
     "GET_CUSTOM_COLORS" => { uri: ->(id:) { "users/#{id}/colors" }, method: "GET" },
     "GET_CUSTOM_COLOR" => { uri: ->(id:, asset_string:) { "users/#{id}/colors/#{asset_string}" }, method: "GET" },
     "UPDATE_CUSTOM_COLOR" => { uri: ->(id:, asset_string:) { "users/#{id}/colors/#{asset_string}" }, method: "PUT" },
     "EDIT_USER" => { uri: ->(id:) { "users/#{id}" }, method: "PUT" },
     "MERGE_USER_INTO_ANOTHER_USER_DESTINATION_USER_ID" => { uri: ->(id:, destination_user_id:) { "users/#{id}/merge_into/#{destination_user_id}" }, method: "PUT" },
     "MERGE_USER_INTO_ANOTHER_USER_ACCOUNTS" => { uri: ->(id:, destination_account_id:, destination_user_id:) { "users/#{id}/merge_into/accounts/#{destination_account_id}/users/#{destination_user_id}" }, method: "PUT" },
     "GET_USER_PROFILE" => { uri: ->(user_id:) { "users/#{user_id}/profile" }, method: "GET" },
     "LIST_AVATAR_OPTIONS" => { uri: ->(user_id:) { "users/#{user_id}/avatars" }, method: "GET" },
     "LIST_USER_PAGE_VIEWS" => { uri: ->(user_id:) { "users/#{user_id}/page_views" }, method: "GET" },
     "STORE_CUSTOM_DATA" => { uri: ->(user_id:) { "users/#{user_id}/custom_data" }, method: "PUT" },
     "LOAD_CUSTOM_DATA" => { uri: ->(user_id:) { "users/#{user_id}/custom_data" }, method: "GET" },
     "DELETE_CUSTOM_DATA" => { uri: ->(user_id:) { "users/#{user_id}/custom_data" }, method: "DELETE" },
     "LIST_COURSE_NICKNAMES" => { uri: ->() { "users/self/course_nicknames" }, method: "GET" },
     "GET_COURSE_NICKNAME" => { uri: ->(course_id:) { "users/self/course_nicknames/#{course_id}" }, method: "GET" },
     "SET_COURSE_NICKNAME" => { uri: ->(course_id:) { "users/self/course_nicknames/#{course_id}" }, method: "PUT" },
     "REMOVE_COURSE_NICKNAME" => { uri: ->(course_id:) { "users/self/course_nicknames/#{course_id}" }, method: "DELETE" },
     "CLEAR_COURSE_NICKNAMES" => { uri: ->() { "users/self/course_nicknames" }, method: "DELETE" },

     # ePub Exports
     "SHOW_EPUB_EXPORT" => { uri: ->(course_id:, id:) { "courses/#{course_id}/epub_exports/#{id}" }, method: "GET" },

    }
  end
end
