<aside class="main-sidebar sidebar-dark-primary elevation-4" style="font-size: 14px;">
	<a href="index3.html" class="brand-link">
		<img src="{{ asset('assets/img/logo_resize.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
		<span class="brand-text font-weight-light"><img src="{{ asset('assets/img/logo.png') }}" style="opacity: .8"></span>
	</a>
    <div class="sidebar">
    	<div class="user-panel mt-3 pb-3 mb-3 d-flex">
	        <div class="image">
				<img src="http://119.18.157.77/public/employees/{{Auth::user()->avatar}}" class="img-circle elevation-2" alt="User Image">
				<!--<img src="http://betterwork.local/public/employees/{{Auth::user()->avatar}}" class="img-circle elevation-2" alt="User Image">-->
	        </div>
	        <div class="info">
	           <a href="{{ route('userHome.index') }}" class="d-block">{{{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}}</a>
	        </div>
	    </div>
	    <nav class="mt-2">
	    	<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
			@if(\Route::is(['userHome.index','myLeave.index','myReimburs.index','myGrievance.index','myGrievance.create','myGrievance.edit','myGrievance.show','myAppraisal.index','myAppraisal.create',
			'myAppraisal.detail','myDevelopment.create','myAppraisal.show','myAppraisal.edit','myTraining.index','profile.edit','myAttendance.index','myBulletin.index','myKnowledge.index','myAttendance.search','myBulletin.show',
			'myGrievancePublished.index','myGrievancePublished.show']))
			<li class="nav-item {{set_open('userHome.index') }}">
	    		<a href="{{ route('userHome.index') }}" class="nav-link {{set_active('userHome.index') }}">
					<i class="nav-icon fas fa-tachometer-alt"></i>
					<p>
						User Dashboard
					</p>
				</a>
			</li>
			<li class="nav-item has-treeview {{set_open(['myLeave.index','myReimburs.index','myGrievance.index','myGrievance.create','myGrievance.edit','myGrievance.show','myAppraisal.index',
			'myAppraisal.create','myAppraisal.detail','myDevelopment.create','myAppraisal.edit','myAppraisal.show','myAppraisal.edit','myTraining.index','profile.edit']) }}">
				<a href="#" class="nav-link {{set_active(['myLeave.index','myReimburs.index','myGrievance.index','myGrievance.create','myGrievance.edit','myGrievance.show','myAppraisal.index',
				'myAppraisal.create','myAppraisal.detail','myDevelopment.create','myAppraisal.show','myAppraisal.edit','myTraining.index','profile.edit']) }}">
					<i class="nav-icon fas fa-user"></i>
					<p>
						My Menu
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview ">
					<li class="nav-item">
						<a href="{{ route('profile.edit') }}" class="nav-link {{set_active('profile.edit') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Update Data</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myLeave.index') }}" class="nav-link {{set_active('myLeave.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Leave Request</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myGrievance.index') }}" class="nav-link {{set_active(['myGrievance.index','myGrievance.create','myGrievance.edit','myGrievance.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Grievance</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myAppraisal.index') }}" class="nav-link {{set_active(['myAppraisal.index','myAppraisal.create','myAppraisal.detail','myDevelopment.create','myAppraisal.show','myAppraisal.edit']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Appraisal</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myTraining.index') }}" class="nav-link {{set_active('myTraining.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Training</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myReimburs.index') }}" class="nav-link {{set_active('myReimburs.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Reimbursment</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview {{set_open(['myBulletin.index','myKnowledge.index','myAttendance.index','myAttendance.search','myBulletin.show','myGrievancePublished.index','myGrievancePublished.show']) }}">
				<a href="#" class="nav-link {{set_active(['myBulletin.index','myKnowledge.index','myAttendance.index','myAttendance.search','myBulletin.show','myGrievancePublished.index','myGrievancePublished.show']) }}">
					<i class="nav-icon fas fa-database"></i>
					<p>
						My Data
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="{{ route('myAttendance.index') }}" class="nav-link {{set_active(['myAttendance.index','myAttendance.search']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>My Attendance</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myBulletin.index') }}" class="nav-link {{set_active(['myBulletin.index','myBulletin.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Bulletin</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myKnowledge.index') }}" class="nav-link {{set_active('myKnowledge.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Knowledge Base</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('myGrievancePublished.index') }}" class="nav-link {{set_active(['myGrievancePublished.index','myGrievancePublished.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Published Grievance</p>
						</a>
					</li>
					@can('disable')
					<li class="nav-item">
						<a href="" class="nav-link {{set_active('myLeave.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Payroll</p>
						</a>
					</li>
					@endcan
				</ul>
			</li>
			@endif
			@can('Access Configuration') 
			@if(\Route::is(['application.index','config.index','position.index','leaveType.index','reimbursType.index','docCat.index','grievCat.index','assetCat.index','user.index','logs.index','role.index',
			'role.create','role.edit','bankAcc.index','organization.index','office.index','accSet.index','holiday.index','hrSet.index']))
			@can('Create Application Setting')
			<li class="nav-item">
				<a href="{{ route('application.index') }}" class="nav-link {{set_active('application.index') }}">
					<i class="nav-icon fas fa-cog"></i>
					<p>
						General Setting
					</p>
				</a>
			</li>
			@endcan
			<li class="nav-item has-treeview {{set_open(['user.index','logs.index','role.index','role.create','role.edit']) }}">
				<a href="#" class="nav-link {{set_active(['user.index','logs.index','role.index','role.create','role.edit']) }}">
					<i class="nav-icon fas fa-users"></i>
					<p>
						User Management
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					@can('Create User')
					<li class="nav-item">
						<a href="{{ route('user.index') }}" class="nav-link {{set_active('user.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>User Database</p>
						</a>
					</li>
					@endcan
					@can('Create Role')
					<li class="nav-item">
						<a href="{{ route('role.index') }}" class="nav-link {{set_active(['role.index','role.create','role.edit']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Access Roles</p>
						</a>
					</li>
					@endcan
					<li class="nav-item">
						<a href="{{ route('logs.index') }}" class="nav-link {{set_active('logs.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Activity Log</p>
						</a>
					</li>
				</ul>
			</li>
			@can('Create HR Master Data')
			<li class="nav-item has-treeview {{set_open(['position.index','leaveType.index','reimbursType.index','docCat.index','grievCat.index','organization.index','office.index','holiday.index','hrSet.index']) }}">
				<a href="#" class="nav-link {{set_active(['position.index','leaveType.index','reimbursType.index','docCat.index','grievCat.index','organization.index','office.index','holiday.index','hrSet.index']) }}">
					<i class="nav-icon fas fa-users"></i>
					<p>
						Human Resources
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview ">
					<li class="nav-item has-treeview {{set_open(['position.index','leaveType.index','reimbursType.index','docCat.index','grievCat.index','organization.index','office.index','holiday.index']) }}">
						<a href="#" class="nav-link {{set_active(['position.index','leaveType.index','reimbursType.index','docCat.index','grievCat.index','organization.index','office.index','holiday.index']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Master Data <i class="right fas fa-angle-left"></i></p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('position.index') }}" class="nav-link {{set_active('position.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Employee Position</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Job Title</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('organization.index') }}" class="nav-link {{set_active('organization.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Organization Chart</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('office.index') }}" class="nav-link {{set_active('office.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Office Location</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('leaveType.index') }}" class="nav-link {{set_active('leaveType.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Leave Approval</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('holiday.index') }}" class="nav-link {{set_active('holiday.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Holiday</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('reimbursType.index') }}" class="nav-link {{set_active('reimbursType.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Reimbursment Type</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('docCat.index') }}" class="nav-link {{set_active('docCat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Broadcast Category</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('grievCat.index') }}" class="nav-link {{set_active('grievCat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Grievance Category</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item">
						<a href="{{ route('hrSet.index') }}" class="nav-link {{set_active('hrSet.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Setting <i class="right fas fa-angle-left"></i></p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Working Time</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Payroll Send</p>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			@endcan
			@can('Create Accounting Master Data')
			<li class="nav-item has-treeview {{set_open(['coaCat.index','assetCat.index','bankAcc.index','accSet.index']) }}">
				<a href="#" class="nav-link {{set_active(['coaCat.index','assetCat.index','bankAcc.index','accSet.index']) }}">
					<i class="nav-icon fas fa-calculator"></i>
					<p>
						Accounting
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item has-treeview {{set_open(['coaCat.index','assetCat.index','bankAcc.index','accSet.index']) }}">
						<a href="#" class="nav-link {{set_active(['coaCat.index','assetCat.index','bankAcc.index','accSet.index']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Master Data <i class="right fas fa-angle-left"></i></p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('assetCat.index') }}" class="nav-link {{set_active('assetCat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Asset Category</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('bankAcc.index') }}" class="nav-link {{set_active('bankAcc.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Bank Account</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('coaCat.index') }}" class="nav-link {{set_active('coaCat.index') }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Chart of Account</p>
								</a>
							</li>
						</ul>
					</li>
					@can('disable')
					<li class="nav-item">
						<a href="{{ route('accSet.index') }}" class="nav-link {{set_active('accSet.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Setting <i class="right fas fa-angle-left"></i></p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Default Account</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Depreciation Method</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Budget Method</p>
								</a>
							</li>
						</ul>
					</li>
					@endcan
				</ul>
			</li>
			@endcan
			@endif
			@endcan
			@can('Access Human Resources')
			@if(\Route::is(['hr.index','employee.index','employee.create','employee.edit','attendance.index','request.index','appraisal.index','appraisal.show','salary.index','bulletin.index','knowledge.index',
			'bulletin.create','bulletin.edit','bulletin.show','knowledge.create','knowledge.edit','knowledge.show','attendance.search','employeeLeave.index','appraisal.edit','training.index','attReport.index'
			,'reimburs.index','salary.show','appraisal.close','attReport.result','attReport.detail','payReport.index','salarySlips.show']))
			@can('Create Employee')
			<li class="nav-item {{set_open(['employee.index','employee.create','employee.edit']) }}">
				<a href="{{ route('employee.index') }}" class="nav-link {{set_active(['employee.index','employee.create','employee.edit']) }}">
					<i class="nav-icon fas fa-users-cog"></i>
					<p>
						Employee Database
					</p>
				</a>
			</li>
			@endcan
			@can('Access Employee Attendance')
			<li class="nav-item has-treeview {{set_open(['attendance.index','request.index','attendance.search','employeeLeave.index']) }}">
				<a href="#" class="nav-link {{set_active(['attendance.index','request.index','attendance.search','employeeLeave.index']) }}">
					<i class="nav-icon fas fa-user-clock"></i>
					<p>
						Attendance
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['attendance.index']) }}">
						<a href="{{ route('attendance.index') }}" class="nav-link {{set_active(['attendance.index','attendance.search']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Employee Attendance</p>
						</a>
					</li>
					@can('Process Request')
					<li class="nav-item {{set_open(['request.index']) }}">
						<a href="{{ route('request.index') }}" class="nav-link {{set_active('request.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Request Approval</p>
						</a>
					</li>
					@endcan
					<li class="nav-item {{set_open(['employeeLeave.index']) }}">
						<a href="{{ route('employeeLeave.index') }}" class="nav-link {{set_active('employeeLeave.index') }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Employee Leave</p>
						</a>
					</li>
				</ul>
			</li>
			@endcan
			<li class="nav-item {{set_open(['training.index']) }}">
				<a href="{{ route('training.index') }}" class="nav-link {{set_active(['training.index']) }}">
					<i class="nav-icon fas fa-certificate"></i>
					<p>
						Training
					</p>
				</a>
			</li>
			@can('Process Appraisal')
			<li class="nav-item {{set_open(['appraisal.index','appraisal.show','appraisal.edit','appraisal.close']) }}">
				<a href="{{ route('appraisal.index') }}" class="nav-link {{set_active(['appraisal.index','appraisal.show','appraisal.edit','appraisal.close']) }}">
					<i class="nav-icon fas fa-clipboard-check"></i>
					<p>
						Appraisal
					</p>
				</a>
			</li>
			@endcan
			@can('Create Payroll')
			<li class="nav-item has-treeview {{set_open(['salary.index','salary.create','reimburs.index','salary.show','salarySlips.show']) }}">
				<a href="#" class="nav-link {{set_active(['salary.index','salary.create','reimburs.index','salary.show','salarySlips.show']) }}">
					<i class="nav-icon fas fa-calculator"></i>
					<p>
						HR Finance
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['salary.index','salary.show']) }}">
						<a href="{{ route('salary.index') }}" class="nav-link {{set_active(['salary.index','salary.show','salarySlips.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Payroll Process</p>
						</a>
					</li>
					<li class="nav-item {{set_open(['reimburs.index']) }}">
						<a href="{{ route('reimburs.index') }}" class="nav-link {{set_active(['reimburs.index']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Reimbursment</p>
						</a>
					</li>
				</ul>
			</li>
			@endcan
			<li class="nav-item has-treeview {{set_open(['bulletin.index','knowledge.index','bulletin.create','bulletin.edit','bulletin.show','knowledge.create','knowledge.edit','knowledge.show']) }}">
				<a href="#" class="nav-link {{set_active(['bulletin.index','knowledge.index','bulletin.create','bulletin.edit','bulletin.show','knowledge.create','knowledge.edit','knowledge.show']) }}">
					<i class="nav-icon fas fa-file-alt"></i>
					<p>
						Bulletin Board
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['bulletin.index','bulletin.create','bulletin.edit','bulletin.show']) }}">
						<a href="{{ route('bulletin.index') }}" class="nav-link {{set_active(['bulletin.index','bulletin.create','bulletin.edit','bulletin.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Employee Bulletin</p>
						</a>
					</li>
					<li class="nav-item {{set_open(['knowledge.index','knowledge.create','knowledge.edit','knowledge.show']) }}">
						<a href="{{ route('knowledge.index') }}" class="nav-link {{set_active(['knowledge.index','knowledge.create','knowledge.edit','knowledge.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Knowledge Base</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview {{set_open(['attReport.index','attReport.result','attReport.detail','payReport.index']) }}">
				<a href="#" class="nav-link {{set_active(['attReport.index','attReport.result','attReport.detail','payReport.index']) }}">
					<i class="nav-icon fas fa-chart-line"></i>
					<p>
						Reports
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['attReport.index','attReport.result']) }}">
						<a href="{{ route('attReport.index') }}" class="nav-link {{set_active(['attReport.index','attReport.result','attReport.detail']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Attendance and Leave</p>
						</a>
					</li>
					<li class="nav-item {{set_open(['payReport.index']) }}">
						<a href="{{ route('payReport.index') }}" class="nav-link {{set_active(['payReport.index']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Payroll and Allowance</p>
						</a>
					</li>
				</ul>
			</li>
			@endif
			@endcan
			@can('Access Grievance')
			@if(\Route::is(['grievance.index','grievanceData.index','managementGrievance.index','grievanceData.edit','grievanceData.show','managementGrievance.show','grievanceData.create','grievancePublished.index',
			'grievancePublished.show']))
			<li class="nav-item">
				<a href="{{ route('grievanceData.create') }}" class="nav-link {{set_active(['grievanceData.create']) }}">
					<i class="nav-icon fas fa-edit"></i>
					<p>
						Manual Input
					</p>
				</a>
			</li>
			<li class="nav-item has-treeview {{set_open(['grievanceData.index','managementGrievance.index','grievanceData.edit','grievanceData.show','managementGrievance.show']) }}">
				<a href="#" class="nav-link {{set_active(['grievanceData.index','managementGrievance.index','grievanceData.edit','grievanceData.show','managementGrievance.show']) }}">
					<i class="nav-icon fas fa-user-shield"></i>
					<p>
						Grievance Process
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item">
						<a href="{{ route('grievanceData.index') }}" class="nav-link {{set_active(['grievanceData.index','grievanceData.edit','grievanceData.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Database</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="{{ route('managementGrievance.index') }}" class="nav-link {{set_active(['managementGrievance.index','managementGrievance.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Management Respond</p>
						</a>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview {{set_open(['grievancePublished.index','grievancePublished.show']) }}">
				<a href="#" class="nav-link {{set_active(['grievancePublished.index','grievancePublished.show']) }}">
					<i class="nav-icon fas fa-chart-line"></i>
					<p>
						Reports
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['grievancePublished.index','grievancePublished.show']) }}">
						<a href="{{ route('grievancePublished.index') }}" class="nav-link {{set_active(['grievancePublished.index','grievancePublished.show']) }}">
							<i class="far fa-circle nav-icon"></i>
							<p>Published Grievance</p>
						</a>
					</li>
				</ul>
			</li>
			@endif
			@endcan
			@can('Access Accounting')
			@if(\Route::is(['accounting.index','bank.index','accountTransaction.index','accTransaction.index','accTransaction.create','spend.create','receive.create','bankStatement.index','account.show','asset.index',
			'journal.index','journal.report','budget.index','budgetDetail.create','budgetDetail.edit','statToAcc.index','asset.show','coaCat.index','bankStatement.import','statToAcc.index']))
			<li class="nav-item has-treeview {{set_open(['accountTransaction.index','spend.create','receive.create','bankStatement.import','statToAcc.index']) }}">
				<a href="#" class="nav-link {{set_active(['accountTransaction.index','spend.create','receive.create','bankStatement.import','statToAcc.index']) }}">
					<p>
						Bank
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item {{set_open(['accountTransaction.index']) }}">
						<a href="" class="nav-link {{set_active(['accountTransaction.index']) }}">
							<i class="nav-icon fas fa-search"></i>
							<p>Find</p>
							<i class="right fas fa-angle-left"></i>
						</a>
						<ul class="nav nav-treeview {{set_open(['accountTransaction.index']) }}">
							<li class="nav-item {{set_active(['accountTransaction.index']) }}">
								<a href="{{ route('accountTransaction.index') }}" class="nav-link {{set_active(['accountTransaction.index']) }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Account Transactions</p>
								</a>
							</li>
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Bank Statements</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item {{set_open(['spend.create','receive.create']) }}">
						<a href="" class="nav-link {{set_active(['spend.create','receive.create']) }}">
							<i class="nav-icon fas fa-plus"></i>
							<p>New</p>
							<i class="right fas fa-angle-left"></i>
						</a>
						<ul class="nav nav-treeview {{set_open(['spend.create','receive.create']) }}">
							<li class="nav-item {{set_active(['spend.create']) }}">
								<a href="{{ route('spend.create') }}" class="nav-link {{set_active(['spend.create']) }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Spend Money</p>
								</a>
							</li>
							<li class="nav-item {{set_active(['receive.create']) }}">
								<a href="{{ route('receive.create') }}" class="nav-link {{set_active(['receive.create']) }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Receive Money</p>
								</a>
							</li>
						</ul>
					</li>
					<li class="nav-item {{set_open(['bankStatement.import','statToAcc.index']) }}">
						<a href="" class="nav-link {{set_active(['bankStatement.import','statToAcc.index']) }}">
							<i class="nav-icon fas fa-equals"></i>
							<p>Reconcile</p>
							<i class="right fas fa-angle-left"></i>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item {{set_open(['statToAcc.index']) }}">
								<a href="" class="nav-link {{set_active(['statToAcc.index']) }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Reconcile Account</p>
								</a>
							</li>
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Bank Rules</p>
								</a>
							</li>
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<i class="far fa-circle nav-icon"></i>
									<p>Reconciliation Report</p>
								</a>
							</li>
							<li class="nav-item {{set_active(['bankStatement.import']) }}">
								<a href="{{ route('bankStatement.import') }}" class="nav-link {{set_active(['bankStatement.import']) }}">
									<i class="far fa-circle nav-icon"></i>
									<p>Import Statement</p>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li class="nav-item has-treeview {{set_open(['coaCat.index']) }}">
				<a href="#" class="nav-link">
					<p>
						Accounting
						<i class="right fas fa-angle-left"></i>
					</p>
				</a>
				<ul class="nav nav-treeview">
					<li class="nav-item ">
						<a href="" class="nav-link ">
							<i class="nav-icon fas fa-table"></i>
							<p>Reports</p>
							<i class="right fas fa-angle-left"></i>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<p>Financial
										<i class="right fas fa-angle-left"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Balance Sheet</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Budget Manager</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Budget Variance</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Cash Summary</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Movement in Equity</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Activity Report</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Statement of Cash Flow</p>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<p>Accounting
										<i class="right fas fa-angle-left"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>General Ledger</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Journal Report</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Trial Balance</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Detail Account Transaction</p>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<p>Fixed Assets
										<i class="right fas fa-angle-left"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Depreciation Schedule</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Fixed Assets Reconciliation</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Disposal Sechedule</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Detail Account Transaction</p>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="nav-item has-treeview {{set_open(['coaCat.index']) }}">
						<a href="" class="nav-link ">
							<i class="nav-icon fas fa-tools"></i>
							<p>Advance</p>
							<i class="right fas fa-angle-left"></i>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item ">
								<a href="" class="nav-link ">
									<p>Advance Features
										<i class="right fas fa-angle-left"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Find and Recode</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Manual Journals</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Fixed Assets</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Assurance Dashboard</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>History and Notes</p>
										</a>
									</li>
								</ul>
							</li>
							<li class="nav-item has-treeview {{set_open(['coaCat.index']) }}">
								<a href="" class="nav-link ">
									<p>Advance Settings
										<i class="right fas fa-angle-left"></i>
									</p>
								</a>
								<ul class="nav nav-treeview">
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Financial Settings</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="{{ route('coaCat.index') }}" class="nav-link {{set_active('coaCat.index') }}">
											<i class="far fa-circle nav-icon"></i>
											<p>Chart of Account</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Tax Rates</p>
										</a>
									</li>
									<li class="nav-item ">
										<a href="" class="nav-link ">
											<i class="far fa-circle nav-icon"></i>
											<p>Fixed Assets Settings</p>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			@endif
			@endcan
			</ul>
		</nav>
    </div>
</aside>

            	
