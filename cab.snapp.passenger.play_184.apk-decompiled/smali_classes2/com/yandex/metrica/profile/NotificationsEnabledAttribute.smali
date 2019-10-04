.class public Lcom/yandex/metrica/profile/NotificationsEnabledAttribute;
.super Lcom/yandex/metrica/profile/BooleanAttribute;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/ot;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ot;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/jv;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/jv;-><init>()V

    const-string v2, "appmetrica_notifications_enabled"

    invoke-direct {p0, v2, v0, v1}, Lcom/yandex/metrica/profile/BooleanAttribute;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/pa;Lcom/yandex/metrica/impl/ob/jh;)V

    return-void
.end method
