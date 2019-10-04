.class final Lcab/snapp/passenger/a/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/a/g;->onBindViewHolder(Lcab/snapp/passenger/a/g$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/a/g$e;

.field final synthetic b:Lcab/snapp/passenger/data/models/FavoriteModel;

.field final synthetic c:Lcab/snapp/passenger/a/g;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/g;Lcab/snapp/passenger/a/g$e;Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcab/snapp/passenger/a/g$2;->c:Lcab/snapp/passenger/a/g;

    iput-object p2, p0, Lcab/snapp/passenger/a/g$2;->a:Lcab/snapp/passenger/a/g$e;

    iput-object p3, p0, Lcab/snapp/passenger/a/g$2;->b:Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 277
    iget-object p1, p0, Lcab/snapp/passenger/a/g$2;->c:Lcab/snapp/passenger/a/g;

    invoke-static {p1}, Lcab/snapp/passenger/a/g;->a(Lcab/snapp/passenger/a/g;)Lcab/snapp/passenger/a/g$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcab/snapp/passenger/a/g$2;->c:Lcab/snapp/passenger/a/g;

    invoke-static {p1}, Lcab/snapp/passenger/a/g;->a(Lcab/snapp/passenger/a/g;)Lcab/snapp/passenger/a/g$d;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/a/g$2;->a:Lcab/snapp/passenger/a/g$e;

    invoke-virtual {v0}, Lcab/snapp/passenger/a/g$e;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/a/g$2;->b:Lcab/snapp/passenger/data/models/FavoriteModel;

    invoke-static {v1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->from(Lcab/snapp/passenger/data/models/FavoriteModel;)Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcab/snapp/passenger/a/g$d;->onItemClick(ILcab/snapp/passenger/data/models/GeocodeMasterModel;Z)V

    :cond_0
    return-void
.end method
