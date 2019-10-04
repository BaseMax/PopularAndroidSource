.class public Lcom/yandex/metrica/impl/ob/io;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/im;
    .locals 1

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/in;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/in;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
