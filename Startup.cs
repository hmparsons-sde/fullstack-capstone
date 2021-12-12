using AspNetCoreVueStarter.DataAccess;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System.Text.Json.Serialization;
using VueCliMiddleware;

namespace AspNetCoreVueStarter
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddSingleton<IConfiguration>(Configuration);
            services.AddTransient<UserRepository>();

            services.AddControllers()
                    .AddJsonOptions(opts =>
                    {
                        var enumConverter = new JsonStringEnumConverter();
                        opts.JsonSerializerOptions.Converters.Add(enumConverter);
                    });
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "Poddammit", Version = "v1" });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "Poddammit v1"));
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
    //public class Startup
    //{
    //    public Startup(IConfiguration configuration)
    //    {
    //        Configuration = configuration;
    //    }

    //    public IConfiguration Configuration { get; }

    //    // This method gets called by the runtime. Use this method to add services to the container.
    //    public void ConfigureServices(IServiceCollection services)
    //    {
    //        services.AddControllersWithViews()
    //                .AddJsonOptions(opts =>
    //                 {
    //                   var enumConverter = new JsonStringEnumConverter();
    //                   opts.JsonSerializerOptions.Converters.Add(enumConverter);
    //                 });

    //        // Add AddRazorPages if the app uses Razor Pages.
    //        // services.AddRazorPages();

    //        // In production, the Vue files will be served from this directory
    //        services.AddSpaStaticFiles(configuration =>
    //        {
    //            configuration.RootPath = "ClientApp/dist";
    //        });
    //    }

    //    // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
    //    public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
    //    {

    //        _ = CommandLine.Arguments.TryGetOptions(System.Environment.GetCommandLineArgs(), false, out string mode, out ushort port, out bool https);

    //        if (env.IsDevelopment())
    //        {
    //            app.UseDeveloperExceptionPage();
    //            //app.UseSwagger();
    //            //app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "scapegoat v1"));
    //        }
    //        else
    //        {
    //            app.UseExceptionHandler("/Error");
    //            // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    //            app.UseHsts();
    //        }

    //        if (https) app.UseHttpsRedirection();

    //        app.UseStaticFiles();
    //        if (!env.IsDevelopment())
    //        {
    //            app.UseSpaStaticFiles();
    //        }

    //        app.UseRouting();

    //        app.UseEndpoints(endpoints =>
    //        {
    //            endpoints.MapControllerRoute(
    //                name: "default",
    //                pattern: "{controller}/{action=Index}/{id?}");

    //            // Add MapRazorPages if the app uses Razor Pages. Since Endpoint Routing includes support for many frameworks, adding Razor Pages is now opt -in.
    //            // endpoints.MapRazorPages();
    //        });

    //        app.UseSpa(spa =>
    //        {
    //            // To learn more about options for serving an Angular SPA from ASP.NET Core,
    //            // see https://go.microsoft.com/fwlink/?linkid=864501

    //            spa.Options.SourcePath = "ClientApp";

    //            if (env.IsDevelopment())
    //            {

    //                // run npm process with client app
    //                if (mode == "start") {
    //                    spa.UseVueCli(npmScript: "serve", port: port, forceKill: true, https: https);
    //                }

    //                // if you just prefer to proxy requests from client app, use proxy to SPA dev server instead,
    //                // app should be already running before starting a .NET client:
    //                // run npm process with client app
    //                if (mode == "attach") {
    //                    spa.UseProxyToSpaDevelopmentServer($"{(https ? "https" : "http")}://localhost:{port}"); // your Vue app port
    //                }
    //            }
    //        });
    //    }
    //}
}
