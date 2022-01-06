using LibraryNET21.UI.Data;
using Microsoft.AspNetCore.Identity;

namespace LibraryNET21.UI.Models
{
    public class SeedUserRoles
    {

        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var scope = serviceProvider.CreateScope())
            {
                var context = scope.ServiceProvider.GetService<ApplicationDbContext>();
                var userManager = scope.ServiceProvider.GetService<UserManager<IdentityUser>>();
                var roleManager = scope.ServiceProvider.GetRequiredService<RoleManager<IdentityRole>>();
                
                context.Database.EnsureCreated();
                CreateAdminUser(roleManager, userManager);
            }

        }


        private static void CreateAdminUser(RoleManager<IdentityRole> roleManager, UserManager<IdentityUser> userManager)
        {
            bool roleFound = roleManager.RoleExistsAsync("Admin").Result;
            
            if (!roleFound)
            {
               var roleCreated = roleManager.CreateAsync(new IdentityRole("Admin")).GetAwaiter().GetResult();
            }

            var user = userManager.FindByNameAsync("admin@123").Result;

            if (user == null)
            {
                var adminUser = new IdentityUser()
                {
                    UserName = "admin@123",
                    Email = "admin@123"
                };

                var created = userManager.CreateAsync(adminUser, "admin1").Result;
                if (created.Succeeded)
                {
                    var confirmationToken = userManager.GenerateEmailConfirmationTokenAsync(adminUser).Result;
                    var adminConfirmed = userManager.ConfirmEmailAsync(adminUser, confirmationToken).Result;

                    var adminCreated = userManager.AddToRoleAsync(adminUser, "Admin").Result;
                }
            }
        }
    }
}
