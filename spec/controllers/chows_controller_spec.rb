require 'rails_helper'
require 'chows_helper'
# Write tests for gen_pdf

##  FROM CHOWS_CONTROLLER
#Reference for testing
#   def import
#     begin
#       Chow.import(params[:file])
#     rescue 
#       flash[:danger] = "Error Uploading File."
#       redirect_to chows_new_path
#     else
#       flash[:success] = "File Imported"
#       redirect_to chows_index_path
#     end
#   end



# FROM CHOWS 
#def self.import(file)
#   spreadsheet = open_spreadsheet(file)
#   header = spreadsheet.row(1)
#   (2..spreadsheet.last_row).each do |i|
#     row = Hash[[header, spreadsheet.row(i)].transpose]
#     row.each do |x,y|
#       if y =~ /^</
#         row[x] = -1.0
#       end
#     end
    
#     # if row["ca_fe_k_at_20_percent"] then row["ca_fe_k_at_20_percent"].to_bool end
#     # if row["gluten_free"] then ["gluten_free"].to_bool end
#     # if row["organic"] then row["organic"].to_bool end
          
#     chow = find_by_name(row["name"]) || new
#     attribute = column_names.delete(1)
    
#     chow.attributes = row.to_hash.slice(*column_names)
    
#     chow.save!
#   end
# end

# K-K-K-kill me
describe ChowsController do
    context 'import' do
        context "successfully importing files" do
            # it "has bad file" do
            #     Chow.import(poop)
            #     expect(response).to redirect_to chows_new_path
            # end
            before do
                post :import, { :file => Rails.root.join('spec', 'fixtures', 'files', 'test.csv').to_s }
            end
            
            # it 'should import a suitable file' do
                
            # end
            
            it 'should indicate success' do
                expect(flash[:success]).to eq "File Imported"
            end
            
            it 'should redirect to the appropriate page' do
                response.should redirect_to chows_index_path
            end
        end
        
        context 'unsuccsessfully importing files' do
            before do
                post :import, { :file => "Totally not a real file" }
            end
            
            it 'should indicate failure 
        end
    end
end