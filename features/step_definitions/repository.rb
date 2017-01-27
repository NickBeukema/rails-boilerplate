class Repository
  def initialize(world)
    @my = world.my
    @their = world.their
    @world = world
  end

  def administrator(args={})
    ctx = context(args)
    ctx.user = Fabricate(:user)
  end

  def mail_lists(args={})
    ctx = context(args)

    ctx.mail_lists << Fabricate(:mail_list, user: ctx.user)
    ctx.mail_lists << Fabricate(:mail_list, user: ctx.user)
  end

  private

  def context(args)
    context = args.delete(:context)
    context || @my
  end
end

class My
  attr_writer :user, :mail_lists

  def user
    raise "user not set" unless @user
    return @user
  end

  def mail_lists
    @mail_lists ||= []
  end
end
