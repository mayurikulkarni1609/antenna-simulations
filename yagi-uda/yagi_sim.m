y = yagiUda();
figure;
pattern(y, 300e6);
title('Yagi-Uda Radiaton Pattern - 300MHz');
exportgraphics(gcf, 'yagi_pattern.png', 'Resolution',300);

figure;
impedance(y, 250e6 : 5e6 : 350e6);
title('Yagi-Uda Impedance');
exportgraphics(gcf, 'yagi-impedance.png', 'Resolution',300);