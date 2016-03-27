class AsyncTryIncrementWorker
  include Sidekiq::Worker

  def perform
    @async_try = AsyncTry.first || AsyncTry.create(count: 0)
    @async_try.increment!(:count)
  end
end
