FROM nginx:1.12
COPY ./certs-configs/nginx/nginx.conf /etc/nginx/nginx.conf
# SSL certificate for api.sodo.asia
COPY ./certs-configs/api.sodo.asia/new_api_sodo_asia.crt /etc/nginx/ssl/
COPY ./certs-configs/api.sodo.asia/api.sodo.asia.key /etc/nginx/ssl/
COPY ./certs-configs/api.sodo.asia/api_sodo_asia_dhparam.pem /etc/nginx/ssl/
# SSL certificate for customer.natuview.com
COPY ./certs-configs/customer.natuview.com/new_customer_natuview_com.crt /etc/nginx/ssl/
COPY ./certs-configs/customer.natuview.com/customer.natuview.key /etc/nginx/ssl/
COPY ./certs-configs/customer.natuview.com/xmarketing_dhparam.pem /etc/nginx/ssl/
# SSL certificate for customer.ordernoithat.com
COPY ./certs-configs/customer.ordernoithat.com/new_customer_ordernoithat_com.crt /etc/nginx/ssl/
COPY ./certs-configs/customer.ordernoithat.com/customer.ordernoithat.com.key /etc/nginx/ssl/
COPY ./certs-configs/customer.ordernoithat.com/customer_ordernoithat_com_dhparam.pem /etc/nginx/ssl/
# SSL certificate for quatang.ordernoithat.com
COPY ./certs-configs/quatang.ordernoithat.com/quatang_ordernoithat_fullchain.pem /etc/nginx/ssl/
COPY ./certs-configs/quatang.ordernoithat.com/quatang_ordernoithat_privkey.pem /etc/nginx/ssl/
COPY ./certs-configs/quatang.ordernoithat.com/quatang_ordernoithat_dhparam.pem /etc/nginx/ssl/
# SSL certificate for likeorder.com
COPY ./certs-configs/likeorder.com/likeorder_com_fullchain.pem /etc/nginx/ssl/
COPY ./certs-configs/likeorder.com/likeorder_com_privkey.pem /etc/nginx/ssl/
COPY ./certs-configs/likeorder.com/likeorder_com_dhparam.pem /etc/nginx/ssl/

CMD ["nginx", "-g", "daemon off;"]
