.class public abstract Lcom/yandex/metrica/impl/ob/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ch;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ac;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Lcom/yandex/metrica/impl/ob/ac;

    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/ac;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cm;->a:Lcom/yandex/metrica/impl/ob/ac;

    return-object v0
.end method
