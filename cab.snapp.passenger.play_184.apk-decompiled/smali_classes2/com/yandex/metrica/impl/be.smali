.class public Lcom/yandex/metrica/impl/be;
.super Lcom/yandex/metrica/impl/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/IReporter;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/IReporter;Lcom/yandex/metrica/impl/j$a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/j;-><init>(Lcom/yandex/metrica/impl/j$a;)V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/be;->a:Lcom/yandex/metrica/IReporter;

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/be;->a:Lcom/yandex/metrica/IReporter;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/IReporter;->reportUnhandledException(Ljava/lang/Throwable;)V

    return-void
.end method
