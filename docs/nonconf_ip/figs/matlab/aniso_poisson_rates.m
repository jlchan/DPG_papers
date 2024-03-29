set(0,'defaultlinelinewidth',1.5)
h =  [0.25, 0.125, 0.0625, 0.03125]

%% p = 1
conf_err =  [0.11070342022030924, 0.030947037173974984, 0.007973900747800966, 0.0020099923605118317]
nconf_err =  [2.4264361398723153, 2.4145071819098618, 2.0176433715937416, 1.1730989143982871]
%conf_rates =  [1.8388265958088266, 1.9564437413035796, 1.9880956299462094]
%nconf_rates =  [0.0071101362628606139, 0.25905756126643648, 0.7823465285822977]

loglog(h,conf_err,'b-');hold on;loglog(h,nconf_err,'bo-')

%% p = 2
conf_err =  [0.0085018925605412146, 0.0021646455955967895, 0.00052627390210458467, 0.00011338713253421412]
%conf_rates =  [1.9736531870735057, 2.0402450819594589, 2.2145569246371846]
nconf_err =  [0.11758480431162902, 0.02642710946661123, 0.0038009491333259918, 0.00034465532686961642]
%nconf_rates =  [2.1536110900128071, 2.7975870117143877, 3.4631334999033005]

loglog(h,conf_err,'r-');hold on;loglog(h,nconf_err,'ro-')

%% p = 3
conf_err =  [0.00094667866515367927, 0.00010064948296027624, 1.1277645430253592e-05, 1.1604295271879549e-06]
%conf_rates =  [3.2335350480520155, 3.1578019656220793, 3.2807350746949733]
nconf_err =  [0.061190426300461259, 0.010439686636924133, 0.0010765096934105532, 8.2723538036884089e-05]
%nconf_rates =  [2.551227542280551, 3.2776451924756986, 3.7019196098701763]

loglog(h,conf_err,'k-');hold on;loglog(h,nconf_err,'ko-')

legend('H^1 p = 1','Broken p = 1',...
    'H^1 p = 2','Broken p = 2',...
    'H^1 p = 3','Broken p = 3')
xlabel('Mesh size h','fontsize',14)
ylabel('L^2 error','fontsize',14)
set(gca,'fontsize',14)
%set(gcf,'DefaultAxesFontSize', 12)
%set(gcf,'DefaultTextFontSize', 12)
%axes('FontSize',14)

print(gcf,'-depsc','../aniso_poisson_rates.eps')
print(gcf,'-dpng','../aniso_poisson_rates.png')
