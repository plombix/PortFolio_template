class Task < ActiveRecord::Base
  belongs_to :list
  def dead_line(aa)
    if aa.future?
      t =  aa - Time.now

      mm, ss = t.divmod(60)            #=> [4515, 21]
      hh, mm = mm.divmod(60)           #=> [75, 15]
      dd, hh = hh.divmod(24)           #=> [3, 3]
      return "#{dd} days, #{hh} hours, #{mm} minutes and #{ss.round()} seconds"
    else
      return 'Dead!!'
    end
  end
end
