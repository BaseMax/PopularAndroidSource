.class public Lcom/yandex/metrica/impl/ob/bs$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/bs$a;->a:J

    .line 19
    iput p5, p0, Lcom/yandex/metrica/impl/ob/bs$a;->c:I

    .line 20
    iput-wide p3, p0, Lcom/yandex/metrica/impl/ob/bs$a;->b:J

    return-void
.end method
