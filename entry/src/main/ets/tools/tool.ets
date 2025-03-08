import { ConfigurationConstant, Context } from "@kit.AbilityKit";
import { preferences } from "@kit.ArkData";

export function putInfoToUserPreference(context:Context,key:string,value:string|number|boolean)
{
 try {
   let userPreference:preferences.Preferences = preferences.getPreferencesSync(context, { name: 'userPreference' });

   userPreference.putSync(key,value)
   userPreference.flush()
   console.log('FUCK:...')
 }catch (err)
 {
   console.log('FUCK:!!!')
 }
}

export function deleteInfoToUserPreference(context:Context,key:string) {

    let userPreference: preferences.Preferences = preferences.getPreferencesSync(context, { name: 'userPreference' });
    userPreference.deleteSync(key)
}

export async function setDarkMode(context:Context,mode:number)
{
  if(mode>=0)
  {
    context.getApplicationContext().setColorMode(mode);
  }
  else{
    context.getApplicationContext().setColorMode(-1);
  }

}

export async function putAccountWithPasswordToUserPreference(context:Context,account:string,password:string)
{
  let userPreference:preferences.Preferences = preferences.getPreferencesSync(context, { name: 'userPreference' });
  userPreference.putSync('account',account)
  userPreference.putSync('password',password)
  userPreference.flush()

}
