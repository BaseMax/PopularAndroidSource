.class final Lcom/ihsanbal/logging/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihsanbal/logging/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihsanbal/logging/d$a;

.field final synthetic b:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/ihsanbal/logging/d$a;Lokhttp3/Request;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ihsanbal/logging/d$2;->a:Lcom/ihsanbal/logging/d$a;

    iput-object p2, p0, Lcom/ihsanbal/logging/d$2;->b:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/ihsanbal/logging/d$2;->a:Lcom/ihsanbal/logging/d$a;

    iget-object v1, p0, Lcom/ihsanbal/logging/d$2;->b:Lokhttp3/Request;

    invoke-static {v0, v1}, Lcom/ihsanbal/logging/e;->b(Lcom/ihsanbal/logging/d$a;Lokhttp3/Request;)V

    return-void
.end method
