.class final Lcab/snapp/mapmodule/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/a;->a(Lcab/snapp/mapmodule/a/a/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/a/a/m;

.field final synthetic b:Lcab/snapp/mapmodule/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/a;Lcab/snapp/mapmodule/a/a/m;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcab/snapp/mapmodule/a$2;->b:Lcab/snapp/mapmodule/a;

    iput-object p2, p0, Lcab/snapp/mapmodule/a$2;->a:Lcab/snapp/mapmodule/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcab/snapp/mapmodule/a$2;->b:Lcab/snapp/mapmodule/a;

    .line 1042
    iget-object v0, v0, Lcab/snapp/mapmodule/a;->a:Lio/reactivex/j/b;

    .line 301
    iget-object v1, p0, Lcab/snapp/mapmodule/a$2;->a:Lcab/snapp/mapmodule/a/a/m;

    invoke-virtual {v0, v1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcab/snapp/mapmodule/a$2;->b:Lcab/snapp/mapmodule/a;

    .line 2042
    iget v0, v0, Lcab/snapp/mapmodule/a;->b:I

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcab/snapp/mapmodule/a$2;->b:Lcab/snapp/mapmodule/a;

    .line 3042
    iget v1, v0, Lcab/snapp/mapmodule/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcab/snapp/mapmodule/a;->b:I

    :cond_0
    return-void
.end method
