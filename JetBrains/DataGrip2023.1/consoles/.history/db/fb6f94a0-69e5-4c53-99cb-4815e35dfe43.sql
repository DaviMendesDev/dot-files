select * from users;
;-- -. . -..- - / . -. - .-. -.--
select * from pharmaceutical_evolutions;
;-- -. . -..- - / . -. - .-. -.--
select * from clinical_conditions;
;-- -. . -..- - / . -. - .-. -.--
select * from drugs;
;-- -. . -..- - / . -. - .-. -.--
describe drugs;
;-- -. . -..- - / . -. - .-. -.--
select * from user_payment_methods;
;-- -. . -..- - / . -. - .-. -.--
select * from treatment_payment_methods;
;-- -. . -..- - / . -. - .-. -.--
select * from coupons_users_applies where applied_at is null;
;-- -. . -..- - / . -. - .-. -.--
select * from order_items;
;-- -. . -..- - / . -. - .-. -.--
select * from boxes where id = 'e19e07a490ad4ecdb676ab84';
;-- -. . -..- - / . -. - .-. -.--
describe coupons;
;-- -. . -..- - / . -. - .-. -.--
describe coupons_users;
;-- -. . -..- - / . -. - .-. -.--
select * from coupons_users;
;-- -. . -..- - / . -. - .-. -.--
select * from coupons_users_applies;
;-- -. . -..- - / . -. - .-. -.--
describe coupons_users_applies;
;-- -. . -..- - / . -. - .-. -.--
describe box_items;
;-- -. . -..- - / . -. - .-. -.--
select box_items;
;-- -. . -..- - / . -. - .-. -.--
select * from treatment_medicines where id_treatment = 'ecc53db5';
;-- -. . -..- - / . -. - .-. -.--
select * from boxes where id_treatment = 'ecc53db5';
;-- -. . -..- - / . -. - .-. -.--
select * from treatments;
;-- -. . -..- - / . -. - .-. -.--
COMMIT;
;-- -. . -..- - / . -. - .-. -.--
select * from pharmacos;
;-- -. . -..- - / . -. - .-. -.--
select * from coupons;
;-- -. . -..- - / . -. - .-. -.--
select * from box_items;
;-- -. . -..- - / . -. - .-. -.--
select * from treatment_medicines;
;-- -. . -..- - / . -. - .-. -.--
describe treatment_medicines;
;-- -. . -..- - / . -. - .-. -.--
select * from billings;
;-- -. . -..- - / . -. - .-. -.--
select * from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `changer_name`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select *
                          from (select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                where `action` = 2
                                order by `created_at` desc) as `bt`
                          group by `bt`.`billing_id`) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select * from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `changer_name`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select *
                          from (select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                where `action` = 23
                                order by `created_at` desc) as `bt`
                          group by `bt`.`billing_id`) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select * from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `changer_name`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select *
                          from (select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                where `action` = 1
                                order by `created_at` desc) as `bt`
                          group by `bt`.`billing_id`) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `changer_name`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select *
                          from (select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                where `action` = 'convert_treatment'
                                order by `created_at` desc) as `bt`
                          group by `bt`.`billing_id`) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `changer_name`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select bt.billing_id, bt.id
                          from (
                              select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                order by `created_at` desc
                            ) as `bt`
                          group by `bt`.`billing_id`, bt.id) as `bt_status` on `bt_status`.`billing_id` = `billings`.`id`
               left join billing_tracks `bt` on `bt_status`.id = `bt`.id
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `bt`.`changed_by`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select bt.billing_id, bt.id
                          from (
                              select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                order by `created_at` desc
                            ) as `bt`
                          group by `bt`.`billing_id`, bt.id) as `bt_status` on `bt_status`.`billing_id` = `billings`.`id`
               left join billing_tracks `bt` on `bt_status`.id = `bt`.id
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select bt.billing_id, bt.id
                          from (
                              select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                order by `created_at` desc
                            ) as `bt`
                          group by `bt`.`billing_id`, bt.id;
;-- -. . -..- - / . -. - .-. -.--
select bt.billing_id
                          from (
                              select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                order by `created_at` desc
                            ) as `bt`
                          group by `bt`.`billing_id`;
;-- -. . -..- - / . -. - .-. -.--
select * from billing_tracks;
;-- -. . -..- - / . -. - .-. -.--
select * from billing_tracks order by created_at desc;
;-- -. . -..- - / . -. - .-. -.--
select `billing_tracks`.*, `users`.`name` as `changer_name`
                                from `billing_tracks`
                                         inner join `users` on `users`.`id` = `billing_tracks`.`changed_by`
                                order by `created_at` desc;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changer_name,
        bt.action,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.user_id AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT billing_id, changed_by AS changer_name, action
        FROM (
            SELECT
                billing_id,
                changed_by,
                action
            FROM billing_tracks
            ORDER BY created_at DESC
        ) AS bt1
        GROUP BY billing_id
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings
WHERE action = 'convert_treatment';
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by AS changer_name,
        bt.action,
        bt.id,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.billing_id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by AS changer_name,
        bt.action,
        bt.id as billing_id,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.billing_id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at;
;-- -. . -..- - / . -. - .-. -.--
SELECT bt2.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at;
;-- -. . -..- - / . -. - .-. -.--
SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.billing_id IS NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by AS changer_name,
        bt.action,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.billing_id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by AS changer_name,
        bt.action,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by AS changer_name,
        bt.action,
        bt.id as billing_id,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by,
        changers.name as changer_name,
        bt.action,
        bt.id as billing_id,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN `users` as changers on changers.id = bt.changed_by
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM (
    SELECT
        billings.id,
        billings.public_id,
        billings.treatment_id,
        bt.changed_by,
        changers.name as changer_name,
        bt.action,
        bt.id as billing_track_id,
        billings.patient_name,
        billings.responsible_name,
        billings.status,
        billings.status AS b_status,
        billings.patient_email,
        billings.contact_phone,
        billings.created_at,
        billings.updated_at,
        u.name AS user_name,
        billings.partner_id,
        billings.deleted_at,
        p.name AS partner_name,
        t.status AS treatment_status
    FROM billings
    INNER JOIN users AS u ON u.id = billings.user_id
    LEFT JOIN (
        SELECT bt1.*
        FROM billing_tracks bt1
        LEFT JOIN billing_tracks bt2
            ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
        WHERE bt2.id IS NULL
    ) AS bt ON bt.billing_id = billings.id
    LEFT JOIN `users` as changers on changers.id = bt.changed_by
    LEFT JOIN partners AS p ON p.id = billings.partner_id
    LEFT JOIN treatments AS t ON t.id = billings.treatment_id
    WHERE billings.deleted_at IS NULL
) AS billings;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select *
                                from `billing_tracks`
                                         left join `billing_tracks` as `bt2`
                                                   on `billing_tracks`.`billing_id` = `bt2`.`billing_id` and
                                                      `billing_tracks`.`created_at` > `bt2`.`created_at`
                                where `bt2`.`id` is null) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select *
                                from `billing_tracks`
                                         left join `billing_tracks` as `bt2`
                                                   on `billing_tracks`.`billing_id` = `bt2`.`billing_id` and
                                                      `billing_tracks`.`created_at` > `bt2`.`created_at`
                                where `bt2`.`id` is null;
;-- -. . -..- - / . -. - .-. -.--
SELECT bt1.*
                          FROM billing_tracks bt1
                                   LEFT JOIN billing_tracks bt2
                                             ON bt1.billing_id = bt2.billing_id AND bt1.created_at < bt2.created_at
                          WHERE bt2.id IS NULL;
;-- -. . -..- - / . -. - .-. -.--
select billing_tracks.*
                                from `billing_tracks`
                                         left join `billing_tracks` as `bt2`
                                                   on `billing_tracks`.`billing_id` = `bt2`.`billing_id` and
                                                      `billing_tracks`.`created_at` > `bt2`.`created_at`
                                where `bt2`.`id` is null;
;-- -. . -..- - / . -. - .-. -.--
select billing_tracks.*
                                from `billing_tracks`
                                    left join `billing_tracks` as `bt2`
                                        on `billing_tracks`.`billing_id` = `bt2`.`billing_id` and
                                          `billing_tracks`.`created_at` < `bt2`.`created_at`
                                where `bt2`.`id` is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `changers`.`name`   as `changer_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select `billing_tracks`.*
                          from `billing_tracks`
                                   left join `billing_tracks` as `bt2`
                                             on `billing_tracks`.`billing_id` = `bt2`.`billing_id` and
                                                `billing_tracks`.`created_at` < `bt2`.`created_at`
                          where `bt2`.`id` is null) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `users` as `changers` on `changers`.`id` = `bt`.`changed_by`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select *
from (select `billings`.`id`     as `id`,
             `billings`.`public_id`,
             `billings`.`treatment_id`,
             `billings`.`patient_name`,
             `billings`.`responsible_name`,
             `billings`.`status`,
             `billings`.`status` as `b_status`,
             `billings`.`patient_email`,
             `billings`.`contact_phone`,
             `billings`.`created_at`,
             `billings`.`updated_at`,
             `u`.`name`          as `user_name`,
             `bt`.id as billing_track_id,
             `changers`.`name`   as `changer_name`,
             `billings`.`partner_id`,
             `billings`.`deleted_at`,
             `p`.`name`          as `partner_name`,
             `t`.`status`        as `treatment_status`
      from `billings`
               inner join `users` as `u` on `u`.`id` = `billings`.`user_id`
               left join (select `billing_tracks`.*
                          from `billing_tracks`
                                   left join `billing_tracks` as `bt2`
                                             on `billing_tracks`.`billing_id` = `bt2`.`billing_id` and
                                                `billing_tracks`.`created_at` < `bt2`.`created_at`
                          where `bt2`.`id` is null) as `bt` on `bt`.`billing_id` = `billings`.`id`
               left join `users` as `changers` on `changers`.`id` = `bt`.`changed_by`
               left join `partners` as `p` on `p`.`id` = `billings`.`partner_id`
               left join `treatments` as `t` on `t`.`id` = `billings`.`treatment_id`
      where `billings`.`deleted_at` is null) as `billings`
where `billings`.`deleted_at` is null;
;-- -. . -..- - / . -. - .-. -.--
select * from invoices;