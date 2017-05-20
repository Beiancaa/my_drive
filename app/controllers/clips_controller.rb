class ClipsController < ApplicationController
   
   def index
      @clips = Clip.where(doc_id: @doc)
   end
   
   def new
      @clip = Clip.new
   end
   
   def create
      @clip = Clip.new(clip_params)
      
      if @clip.save
         redirect_to clips_path, notice: "The clip #{@clip.name} has been uploaded."
      else
         render "new"
      end
   end

   def destroy
      @clip = Clip.find(params[:id])
      @clip.destroy
      redirect_to clips_path, notice:  "The clip #{@clip.name} has been deleted."
   end
   
   private
      def clip_params
         params.require(:clip).permit(:doc_id, :name, :file)
      end
end
