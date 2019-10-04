.class final Lcab/snapp/mapmodule/a$1;
.super Lcom/mapbox/mapboxsdk/LibraryLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/a;->initMapBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcab/snapp/mapmodule/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/a;Landroid/content/Context;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcab/snapp/mapmodule/a$1;->b:Lcab/snapp/mapmodule/a;

    iput-object p2, p0, Lcab/snapp/mapmodule/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/LibraryLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcab/snapp/mapmodule/a$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/getkeepsafe/a/c;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
