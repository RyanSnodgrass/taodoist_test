class ToDo < ActiveRecord::Base
	belongs_to :assignee

	# scope :by_name, -> (name) { where('name = ?', name) }
	# scope :by_department, -> (department) { where('department = ?', department) }
	# scope :by_deadline, -> (deadline) { where('? BETWEEN Date.today AND deadline', deadline) }

	mount_uploader :file, FileUploader

	def self.by_name(name)
		joins(:assignees).where('assignees.name = ?', "%#{name}%")
	end

	def self.by_department(department)
		joins(:assignees).where('assignees.department = ?', "%#{department}%")
	end

	def self.by_deadline(start_date, end_date)
		where('date BETWEEN ? AND ?', start_date, end_date)
	end

	def self.search(params)
		task = params[:task]

		search = self.all

		if params[:completed] == "Yes"
			search = search.where(completed: true)
		elsif params[:completed] == "No"
			search = search.where(completed: false)
		end

		if task.present?
			search = search.where('task LIKE ?', "%#{task}%")		
		end

		search
	end

end
