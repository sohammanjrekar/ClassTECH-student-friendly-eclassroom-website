

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `attendence_lastface` (
  `id` bigint(20) NOT NULL,
  `last_face` int(11) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `attendence_profile` (
  `first_name` varchar(70) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `date` date NOT NULL,
  `phone` bigint(20) NOT NULL,
  `parentphone` bigint(20) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `roomno` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `college` varchar(200) NOT NULL,
  `course` varchar(200) DEFAULT NULL,
  `hostelname` varchar(20) DEFAULT NULL,
  `hosteltype` varchar(20) DEFAULT NULL,
  `present` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `shift` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('bb783e98ea378dff03f8eda1b429ed8c589f846b', '2023-04-11 04:24:31.510522', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add teacher', 8, 'add_teacher'),
(30, 'Can change teacher', 8, 'change_teacher'),
(31, 'Can delete teacher', 8, 'delete_teacher'),
(32, 'Can view teacher', 8, 'view_teacher'),
(33, 'Can add course category', 9, 'add_coursecategory'),
(34, 'Can change course category', 9, 'change_coursecategory'),
(35, 'Can delete course category', 9, 'delete_coursecategory'),
(36, 'Can view course category', 9, 'view_coursecategory'),
(37, 'Can add course', 10, 'add_course'),
(38, 'Can change course', 10, 'change_course'),
(39, 'Can delete course', 10, 'delete_course'),
(40, 'Can view course', 10, 'view_course'),
(41, 'Can add Token', 11, 'add_token'),
(42, 'Can change Token', 11, 'change_token'),
(43, 'Can delete Token', 11, 'delete_token'),
(44, 'Can view Token', 11, 'view_token'),
(45, 'Can add token', 12, 'add_tokenproxy'),
(46, 'Can change token', 12, 'change_tokenproxy'),
(47, 'Can delete token', 12, 'delete_tokenproxy'),
(48, 'Can view token', 12, 'view_tokenproxy'),
(49, 'Can add quiz questions', 13, 'add_quizquestions'),
(50, 'Can change quiz questions', 13, 'change_quizquestions'),
(51, 'Can delete quiz questions', 13, 'delete_quizquestions'),
(52, 'Can view quiz questions', 13, 'view_quizquestions'),
(53, 'Can add course quiz', 14, 'add_coursequiz'),
(54, 'Can change course quiz', 14, 'change_coursequiz'),
(55, 'Can delete course quiz', 14, 'delete_coursequiz'),
(56, 'Can view course quiz', 14, 'view_coursequiz'),
(57, 'Can add quiz', 15, 'add_quiz'),
(58, 'Can change quiz', 15, 'change_quiz'),
(59, 'Can delete quiz', 15, 'delete_quiz'),
(60, 'Can view quiz', 15, 'view_quiz'),
(61, 'Can add contactus', 16, 'add_contactus'),
(62, 'Can change contactus', 16, 'change_contactus'),
(63, 'Can delete contactus', 16, 'delete_contactus'),
(64, 'Can view contactus', 16, 'view_contactus'),
(65, 'Can add homework', 17, 'add_homework'),
(66, 'Can change homework', 17, 'change_homework'),
(67, 'Can delete homework', 17, 'delete_homework'),
(68, 'Can view homework', 17, 'view_homework'),
(69, 'Can add todo', 18, 'add_todo'),
(70, 'Can change todo', 18, 'change_todo'),
(71, 'Can delete todo', 18, 'delete_todo'),
(72, 'Can view todo', 18, 'view_todo'),
(73, 'Can add note', 19, 'add_note'),
(74, 'Can change note', 19, 'change_note'),
(75, 'Can delete note', 19, 'delete_note'),
(76, 'Can view note', 19, 'view_note'),
(77, 'Can add last face', 20, 'add_lastface'),
(78, 'Can change last face', 20, 'change_lastface'),
(79, 'Can delete last face', 20, 'delete_lastface'),
(80, 'Can view last face', 20, 'view_lastface'),
(81, 'Can add profile', 21, 'add_profile'),
(82, 'Can change profile', 21, 'change_profile'),
(83, 'Can delete profile', 21, 'delete_profile'),
(84, 'Can view profile', 21, 'view_profile'),
(85, 'Can add profile', 22, 'add_profile'),
(86, 'Can change profile', 22, 'change_profile'),
(87, 'Can delete profile', 22, 'delete_profile'),
(88, 'Can view profile', 22, 'view_profile'),
(89, 'Can add grievance', 23, 'add_grievance'),
(90, 'Can change grievance', 23, 'change_grievance'),
(91, 'Can delete grievance', 23, 'delete_grievance'),
(92, 'Can view grievance', 23, 'view_grievance'),
(93, 'Can add complaint', 24, 'add_complaint'),
(94, 'Can change complaint', 24, 'change_complaint'),
(95, 'Can delete complaint', 24, 'delete_complaint'),
(96, 'Can view complaint', 24, 'view_complaint');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$mPPXOXyWeSPUyjepS4YDOk$T7RrNgkgZoJlnnBm332xh2JSvGVFaCmtQk0CoK0DYZg=', '2023-04-17 06:22:08.674518', 1, 'soham', '', '', 'soham@gmail.com', 1, 1, '2023-04-11 02:04:39.919190');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classroom_homework`
--

CREATE TABLE `classroom_homework` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `due` datetime(6) DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_homework`
--

INSERT INTO `classroom_homework` (`id`, `subject`, `title`, `description`, `due`, `is_finished`, `user_id`) VALUES
(1, 'se', 'waterflow', 'ubb iuuibiboil', '2023-04-12 02:07:32.000000', 0, 1),
(2, 'guiiu', 'ggu', 'guiguiiho', NULL, 0, NULL),
(4, 'SE', 'se assgn1', 'done in 1 week', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_note`
--

CREATE TABLE `classroom_note` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_note`
--

INSERT INTO `classroom_note` (`id`, `title`, `description`, `user_id`) VALUES
(1, 'se ass1', 'xccuy', 1),
(3, 'ass1 mb', 'done guib', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_todo`
--

CREATE TABLE `classroom_todo` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `is_finished` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_todo`
--

INSERT INTO `classroom_todo` (`id`, `title`, `is_finished`, `user_id`) VALUES
(1, 'tvyuyubuib', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_complaint`
--

CREATE TABLE `complaint_complaint` (
  `id` bigint(20) NOT NULL,
  `Subject` varchar(200) DEFAULT NULL,
  `Type_of_complaint` varchar(200) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Time` date NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_complaint`
--

INSERT INTO `complaint_complaint` (`id`, `Subject`, `Type_of_complaint`, `Description`, `Time`, `status`, `user_id`) VALUES
(1, 'fan problem', 'ClassRoom', 'air ventilation is worst', '2023-04-12', 3, 1),
(2, 'light problem', 'Management', 'light is not good', '2023-04-12', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_grievance`
--

CREATE TABLE `complaint_grievance` (
  `id` bigint(20) NOT NULL,
  `guser_id` int(11) NOT NULL,
  `Description` longtext DEFAULT NULL,
  `Subject` varchar(200) DEFAULT NULL,
  `Time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_grievance`
--

INSERT INTO `complaint_grievance` (`id`, `guser_id`, `Description`, `Subject`, `Time`) VALUES
(6, 1, 'ifwoijoijgp9', 'excellent work', '2023-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `core_contactus`
--

CREATE TABLE `core_contactus` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_contactus`
--

INSERT INTO `core_contactus` (`id`, `full_name`, `email`, `message`) VALUES
(1, 'shrusti', 'gfwuibowi@gmail.com', 'iowfiof'),
(2, 'sohamb', 'fnwinfoi@gmail.com', 'iwenuiiohnio'),
(3, 'danishdt', 'gfwuibowi@gmail.com', 'tycuvuyviuk');

-- --------------------------------------------------------

--
-- Table structure for table `core_course`
--

CREATE TABLE `core_course` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_course`
--

INSERT INTO `core_course` (`id`, `title`, `description`, `category_id`, `teacher_id`) VALUES
(1, 'Computer network', 'bubub', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_coursecategory`
--

CREATE TABLE `core_coursecategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_coursecategory`
--

INSERT INTO `core_coursecategory` (`id`, `title`, `description`) VALUES
(1, 'FE Comps Sem 1', 'first year comps');

-- --------------------------------------------------------

--
-- Table structure for table `core_student`
--

CREATE TABLE `core_student` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_teacher`
--

CREATE TABLE `core_teacher` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_teacher`
--

INSERT INTO `core_teacher` (`id`, `full_name`, `email`, `password`, `mobileno`) VALUES
(1, 'Reshma lohar madam', 'reshmalohar@gmail.com', '1234', '8052624152'),
(2, 'junad sir', 'junad@gmail.com', '45623', '08052624152'),
(5, 'soham manjrekar', 'biiubu', '4868186', '1234'),
(6, 'hetal', 'neinvin', '158', '455841'),
(7, 'danish', 'vuvuy@gmail.com', '1234', '99415846854'),
(8, 'danish61', 'vuvbhuy@gmail.com', '1234', '99415846854'),
(9, 'danish6145', 'vnuiuvbhuy@gmail.com', '125', '14959656'),
(10, 'shrusti', 'gfwuibowi@gmail.com', '1234', '16186516');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-11 03:49:36.049530', '1', 'Teacher object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-04-11 19:10:48.312230', '1', 'soham', 1, '[{\"added\": {}}]', 24, 1),
(3, '2023-04-11 19:11:36.460253', '2', 'soham', 1, '[{\"added\": {}}]', 24, 1),
(4, '2023-04-11 19:16:02.860911', '6', 'excellent work', 1, '[{\"added\": {}}]', 23, 1),
(5, '2023-04-12 02:05:57.765999', '1', 'se', 1, '[{\"added\": {}}]', 15, 1),
(6, '2023-04-12 02:07:39.659022', '1', 'waterflow', 1, '[{\"added\": {}}]', 17, 1),
(7, '2023-04-12 02:09:05.625092', '1', 'FE Comps Sem 1', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-04-12 02:09:37.996089', '1', 'Computer network', 1, '[{\"added\": {}}]', 10, 1),
(9, '2023-04-12 02:09:57.587161', '1', 'CourseQuiz object (1)', 1, '[{\"added\": {}}]', 14, 1),
(10, '2023-04-12 02:10:38.715088', '1', 'i old are you?', 1, '[{\"added\": {}}]', 13, 1),
(11, '2023-04-17 06:22:35.048285', '8', 'Css', 2, '[{\"changed\": {\"fields\": [\"Teacher\"]}}]', 15, 1),
(12, '2023-04-17 06:22:58.756608', '2', 'what\'s your name', 2, '[{\"changed\": {\"fields\": [\"Quiz\"]}}]', 13, 1),
(13, '2023-04-17 06:23:08.038938', '1', 'FE Comps Sem 1', 2, '[]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(20, 'attendence', 'lastface'),
(21, 'attendence', 'profile'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'authtoken', 'token'),
(12, 'authtoken', 'tokenproxy'),
(17, 'classroom', 'homework'),
(19, 'classroom', 'note'),
(18, 'classroom', 'todo'),
(24, 'complaint', 'complaint'),
(23, 'complaint', 'grievance'),
(22, 'complaint', 'profile'),
(5, 'contenttypes', 'contenttype'),
(16, 'core', 'contactus'),
(10, 'core', 'course'),
(9, 'core', 'coursecategory'),
(7, 'core', 'student'),
(8, 'core', 'teacher'),
(14, 'quiz', 'coursequiz'),
(15, 'quiz', 'quiz'),
(13, 'quiz', 'quizquestions'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-11 01:58:46.274083'),
(2, 'auth', '0001_initial', '2023-04-11 01:58:47.268493'),
(3, 'admin', '0001_initial', '2023-04-11 01:58:47.588126'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-11 01:58:47.643249'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-11 01:58:47.725677'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-11 01:58:47.880955'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-11 01:58:48.061852'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-11 01:58:48.200469'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-11 01:58:48.229769'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-11 01:58:48.460940'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-11 01:58:48.465940'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-11 01:58:48.483332'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-11 01:58:48.530774'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-11 01:58:48.589855'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-11 01:58:48.655436'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-11 01:58:48.695188'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-11 01:58:48.756545'),
(18, 'sessions', '0001_initial', '2023-04-11 01:58:48.861910'),
(19, 'core', '0001_initial', '2023-04-11 03:09:09.021048'),
(20, 'core', '0002_alter_coursecategory_options', '2023-04-11 03:11:35.145040'),
(21, 'core', '0003_alter_course_options_alter_coursecategory_options_and_more', '2023-04-11 03:13:44.822837'),
(22, 'authtoken', '0001_initial', '2023-04-11 04:16:42.862644'),
(23, 'authtoken', '0002_auto_20160226_1747', '2023-04-11 04:16:42.902088'),
(24, 'authtoken', '0003_tokenproxy', '2023-04-11 04:16:42.909084'),
(25, 'core', '0004_remove_student_address_and_more', '2023-04-11 09:55:42.300000'),
(26, 'core', '0005_remove_teacher_address', '2023-04-11 10:05:19.693920'),
(27, 'core', '0006_remove_student_qualification', '2023-04-11 11:02:46.076391'),
(28, 'core', '0007_remove_teacher_qualification', '2023-04-11 11:36:10.961410'),
(29, 'quiz', '0001_initial', '2023-04-11 12:32:20.022682'),
(30, 'attendence', '0001_initial', '2023-04-11 18:17:50.483329'),
(31, 'classroom', '0001_initial', '2023-04-11 18:17:50.719365'),
(32, 'complaint', '0001_initial', '2023-04-11 18:17:50.948198'),
(33, 'core', '0008_contactus', '2023-04-11 18:17:50.970597'),
(34, 'complaint', '0002_delete_profile', '2023-04-11 19:09:37.715459'),
(35, 'complaint', '0003_alter_grievance_guser', '2023-04-11 19:13:15.582184'),
(36, 'complaint', '0004_grievance_description_grievance_subject_and_more', '2023-04-11 19:15:01.632757'),
(37, 'classroom', '0002_alter_homework_options_alter_note_options_and_more', '2023-04-12 03:39:25.648360'),
(38, 'quiz', '0002_alter_coursequiz_course', '2023-04-12 03:39:25.808321'),
(39, 'classroom', '0003_alter_homework_due', '2023-04-12 04:02:10.391728');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0hjqubowyowwentfkiuvtf8hqh0lp18j', '.eJxVjEEOwiAQRe_C2pCBlgIu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXKTsCcIbYW4caFQzO9JkzWt-7rosIERVay6SZ0gCsjQcTk_U27q74fAHuhzgG:1poIFc:X14zjRT6rgKhu2VAHkwOMV6RHNf9hG_1RKSUschQ-DM', '2023-05-01 06:22:08.685510'),
('8fci7j8xt3h5iv0nlveldsawet06dfgm', '.eJxVjEEOwiAQRe_C2pCBlgIu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXKTsCcIbYW4caFQzO9JkzWt-7rosIERVay6SZ0gCsjQcTk_U27q74fAHuhzgG:1pm4zF:smq4ACRuUMl3oZCa1wJnm4VIFkMQIxM0PehNAZXE0DA', '2023-04-25 03:48:05.830063'),
('ey519cskad89z0knyc3vo255l4bp4mc3', '.eJxVjEEOwiAQRe_C2pCBlgIu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXKTsCcIbYW4caFQzO9JkzWt-7rosIERVay6SZ0gCsjQcTk_U27q74fAHuhzgG:1pmDAy:8rKWAvPx_xqy03pW4AhJZHwNtXj7SAQRFd6gRecJDek', '2023-04-25 12:32:44.398902'),
('vqg4a3sutpkpya5e1q8eer1ga3ab3o8i', '.eJxVjEEOwiAQRe_C2pCBlgIu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXKTsCcIbYW4caFQzO9JkzWt-7rosIERVay6SZ0gCsjQcTk_U27q74fAHuhzgG:1pm5m7:S2fVEcksaxKPe0Zj5DYFCX-3ydlxEEZrymv1ESVuc-8', '2023-04-25 04:38:35.684777'),
('yav0q66x5bdx133xr7m5wwp0invxfv37', '.eJxVjEEOwiAQRe_C2pCBlgIu3fcMZJgBqRqalHZlvLtt0oVu_3vvv0XAbS1ha2kJE4urUOLyu0WkZ6oH4AfW-yxprusyRXko8qRNjjOn1-10_w4KtrLXKTsCcIbYW4caFQzO9JkzWt-7rosIERVay6SZ0gCsjQcTk_U27q74fAHuhzgG:1pmJNQ:zgGCdNrhh_rhLS1r8-OpJ9tp-v_fYLMsSXwmIfDNtFE', '2023-04-25 19:10:00.201764');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_coursequiz`
--

CREATE TABLE `quiz_coursequiz` (
  `id` bigint(20) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `quiz_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_coursequiz`
--

INSERT INTO `quiz_coursequiz` (`id`, `add_time`, `course_id`, `quiz_id`) VALUES
(1, '2023-04-12 02:09:57.585095', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_quiz`
--

CREATE TABLE `quiz_quiz` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `teacher_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_quiz`
--

INSERT INTO `quiz_quiz` (`id`, `title`, `detail`, `add_time`, `teacher_id`) VALUES
(1, 'se', 'yiub', '2023-04-12 02:05:57.759131', 1),
(2, 'iot', 'iot application', '2023-04-12 02:29:13.774910', NULL),
(8, 'Css', 'cryptography', '2023-04-12 02:30:18.801143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_quizquestions`
--

CREATE TABLE `quiz_quizquestions` (
  `id` bigint(20) NOT NULL,
  `Question` varchar(100) NOT NULL,
  `ans1` varchar(100) NOT NULL,
  `ans2` varchar(100) NOT NULL,
  `ans3` varchar(100) NOT NULL,
  `ans4` varchar(100) NOT NULL,
  `right_ans` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `quiz_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_quizquestions`
--

INSERT INTO `quiz_quizquestions` (`id`, `Question`, `ans1`, `ans2`, `ans3`, `ans4`, `right_ans`, `add_time`, `quiz_id`) VALUES
(1, 'i old are you?', '14', '85', '25', '56', '25', '2023-04-12 02:10:38.713506', 1),
(2, 'what\'s your name', 'soham', 'manish', 'danish', 'suchit', 'soham', '2023-04-12 02:42:30.149919', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence_lastface`
--
ALTER TABLE `attendence_lastface`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_profile`
--
ALTER TABLE `attendence_profile`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `classroom_homework`
--
ALTER TABLE `classroom_homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_homework_user_id_d0f76e24_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `classroom_note`
--
ALTER TABLE `classroom_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_note_user_id_5743b9a2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `classroom_todo`
--
ALTER TABLE `classroom_todo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_todo_user_id_9dc5d037_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `complaint_complaint`
--
ALTER TABLE `complaint_complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_complaint_user_id_60ad9068_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `complaint_grievance`
--
ALTER TABLE `complaint_grievance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaint_grievance_guser_id_da7130c9` (`guser_id`);

--
-- Indexes for table `core_contactus`
--
ALTER TABLE `core_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_course`
--
ALTER TABLE `core_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_course_category_id_6eee1bdf_fk_core_coursecategory_id` (`category_id`),
  ADD KEY `core_course_teacher_id_c5fe8e73_fk_core_teacher_id` (`teacher_id`);

--
-- Indexes for table `core_coursecategory`
--
ALTER TABLE `core_coursecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_student`
--
ALTER TABLE `core_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_teacher`
--
ALTER TABLE `core_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `quiz_coursequiz`
--
ALTER TABLE `quiz_coursequiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_coursequiz_quiz_id_9a189ddf_fk_quiz_quiz_id` (`quiz_id`),
  ADD KEY `quiz_coursequiz_course_id_e5a92c31_fk_core_course_id` (`course_id`);

--
-- Indexes for table `quiz_quiz`
--
ALTER TABLE `quiz_quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_quiz_teacher_id_eab36d84_fk_core_teacher_id` (`teacher_id`);

--
-- Indexes for table `quiz_quizquestions`
--
ALTER TABLE `quiz_quizquestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_quizquestions_quiz_id_d846128e_fk_quiz_quiz_id` (`quiz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence_lastface`
--
ALTER TABLE `attendence_lastface`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classroom_homework`
--
ALTER TABLE `classroom_homework`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `classroom_note`
--
ALTER TABLE `classroom_note`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classroom_todo`
--
ALTER TABLE `classroom_todo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint_complaint`
--
ALTER TABLE `complaint_complaint`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint_grievance`
--
ALTER TABLE `complaint_grievance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_contactus`
--
ALTER TABLE `core_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_course`
--
ALTER TABLE `core_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_coursecategory`
--
ALTER TABLE `core_coursecategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_student`
--
ALTER TABLE `core_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_teacher`
--
ALTER TABLE `core_teacher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `quiz_coursequiz`
--
ALTER TABLE `quiz_coursequiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_quiz`
--
ALTER TABLE `quiz_quiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_quizquestions`
--
ALTER TABLE `quiz_quizquestions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `classroom_homework`
--
ALTER TABLE `classroom_homework`
  ADD CONSTRAINT `classroom_homework_user_id_d0f76e24_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `classroom_note`
--
ALTER TABLE `classroom_note`
  ADD CONSTRAINT `classroom_note_user_id_5743b9a2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `classroom_todo`
--
ALTER TABLE `classroom_todo`
  ADD CONSTRAINT `classroom_todo_user_id_9dc5d037_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `complaint_complaint`
--
ALTER TABLE `complaint_complaint`
  ADD CONSTRAINT `complaint_complaint_user_id_60ad9068_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `complaint_grievance`
--
ALTER TABLE `complaint_grievance`
  ADD CONSTRAINT `complaint_grievance_guser_id_da7130c9_fk_auth_user_id` FOREIGN KEY (`guser_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_course`
--
ALTER TABLE `core_course`
  ADD CONSTRAINT `core_course_category_id_6eee1bdf_fk_core_coursecategory_id` FOREIGN KEY (`category_id`) REFERENCES `core_coursecategory` (`id`),
  ADD CONSTRAINT `core_course_teacher_id_c5fe8e73_fk_core_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `core_teacher` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_coursequiz`
--
ALTER TABLE `quiz_coursequiz`
  ADD CONSTRAINT `quiz_coursequiz_course_id_e5a92c31_fk_core_course_id` FOREIGN KEY (`course_id`) REFERENCES `core_course` (`id`),
  ADD CONSTRAINT `quiz_coursequiz_quiz_id_9a189ddf_fk_quiz_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_quiz` (`id`);

--
-- Constraints for table `quiz_quiz`
--
ALTER TABLE `quiz_quiz`
  ADD CONSTRAINT `quiz_quiz_teacher_id_eab36d84_fk_core_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `core_teacher` (`id`);

--
-- Constraints for table `quiz_quizquestions`
--
ALTER TABLE `quiz_quizquestions`
  ADD CONSTRAINT `quiz_quizquestions_quiz_id_d846128e_fk_quiz_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_quiz` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
