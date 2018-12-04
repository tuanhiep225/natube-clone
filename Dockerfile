FROM nginx:1.12
COPY ./certs-configs/nginx/nginx.conf /etc/nginx/nginx.conf

# SSL certificate for customer.natuview.com
COPY ./certs-configs/customer.natuview.com/new_customer_natuview_com.crt /etc/nginx/ssl/
COPY ./certs-configs/customer.natuview.com/customer.natuview.key /etc/nginx/ssl/
COPY ./certs-configs/customer.natuview.com/xmarketing_dhparam.pem /etc/nginx/ssl/


CMD ["nginx", "-g", "daemon off;"]
