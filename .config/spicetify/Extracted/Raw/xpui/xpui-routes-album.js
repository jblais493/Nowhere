"use strict";(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[2342],{7071:(e,a,i)=>{i.d(a,{g:()=>s});var n=i(51005),t=i(54451),l=i(4637);const s=({children:e})=>(0,l.jsx)(n.D,{variant:"mesto",className:t.Z.pretitle,children:e})},59522:(e,a,i)=>{i.d(a,{x:()=>m});var n=i(59496),t=i(79086),l=i(60433),s=i(84463),r=i(50293),o=i(8177),c=i(65980),d=i(4637);const m=({children:e,action:a,uri:i})=>{const m=(0,l.g)(),u=(0,r.j)();let g;const h=()=>{const e={triggerId:c.K,triggerAction:{type:a}};o.y.set((a=>({...a,...e}))),u.storeAction(s.wH,{operation:t.pT.ADD,uris:[i]})};try{g=n.Children.only(e)}catch(a){return(0,d.jsx)(d.Fragment,{children:e})}return m?n.cloneElement(g,{onClick:h}):(0,d.jsx)(d.Fragment,{children:e})}},63833:(e,a,i)=>{i.r(a),i.d(a,{default:()=>De});var n=i(59496),t=i(84875),l=i.n(t),s=i(55411),r=i(13841),o=i(51005),c=i(7941),d=i(91120),m=i(74834),u=i(19172),g=i(99302),h=i(45267),k=i(8327),x=i(57014),b=i(31267),p=i(82289),j=i(38730),y=i(68368),v=i(90337),f=i(71876);const N={kind:"Document",definitions:[{kind:"OperationDefinition",operation:"query",name:{kind:"Name",value:"queryAlbumMerch"},variableDefinitions:[{kind:"VariableDefinition",variable:{kind:"Variable",name:{kind:"Name",value:"uri"}},type:{kind:"NonNullType",type:{kind:"NamedType",name:{kind:"Name",value:"ID"}}}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"albumUnion"},arguments:[{kind:"Argument",name:{kind:"Name",value:"uri"},value:{kind:"Variable",name:{kind:"Name",value:"uri"}}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"InlineFragment",typeCondition:{kind:"NamedType",name:{kind:"Name",value:"Album"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"name"}},{kind:"Field",name:{kind:"Name",value:"merch"},arguments:[{kind:"Argument",name:{kind:"Name",value:"offset"},value:{kind:"IntValue",value:"0"}},{kind:"Argument",name:{kind:"Name",value:"limit"},value:{kind:"IntValue",value:"20"}}],selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"totalCount"}},{kind:"Field",name:{kind:"Name",value:"items"},selectionSet:{kind:"SelectionSet",selections:[{kind:"FragmentSpread",name:{kind:"Name",value:"albumMerchItem"}}]}}]}}]}}]}}]}},{kind:"FragmentDefinition",name:{kind:"Name",value:"albumMerchItem"},typeCondition:{kind:"NamedType",name:{kind:"Name",value:"Merch"}},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"image"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"sources"},selectionSet:{kind:"SelectionSet",selections:[{kind:"Field",name:{kind:"Name",value:"url"}}]}}]}},{kind:"Field",name:{kind:"Name",value:"name"}},{kind:"Field",name:{kind:"Name",value:"description"}},{kind:"Field",name:{kind:"Name",value:"price"}},{kind:"Field",name:{kind:"Name",value:"uri"}},{kind:"Field",name:{kind:"Name",value:"url"}}]}}]};var S=i(20766);const C="iEG0moJ3mt1_j9Lho7MA";var I=i(4637);const F=({albumName:e,albumURI:a})=>{const{data:i}=(n={uri:a},t={cacheTime:5*f.y},(0,f.a)(N,n,t));var n,t;const l=i?.albumUnion&&"merch"in i.albumUnion?i?.albumUnion?.merch?.items:[];return l&&l?.length>0?(0,I.jsx)("div",{className:"contentSpacing",children:(0,I.jsx)("div",{className:C,children:(0,I.jsx)(S.s,{id:e,uri:a,merchItems:l,merchVariant:"Album page merch items"})})}):null};var U=i(62748),w=i(84933),A=i(41432),M=i(19929),T=i(75024),P=i(17246),L=i(27445),D=i(92499),O=i(9024),V=i(27601),z=i(20274),B=i(41601),R=i(74272),E=i(67866),q=i(59522),_=i(16786),Q=i(47570),H=i(72484),Z=i(87664),G=i(80731),K=i(51652),X=i(25129);const Y=n.memo((function({uri:e,togglePlay:a,isPlaying:i,isActive:t,spec:l,logger:s,backgroundColor:r,name:o,artists:c,isPlayable:d,sharingInfo:m}){const u=(0,Q.o)(),h=(0,H.k)(),x=(0,V.y)(),b=(0,n.useMemo)((()=>l.actionBarFactory()),[l]),[p,j]=(0,V.Z)(e),y=(0,n.useCallback)((()=>{const n=(0,Z.aK)({isPlaying:i,isActive:t,spec:b.playButtonFactory(),logger:s,uri:e});a({loggingParams:n})}),[i,t,a,b,s,e]),f=(0,n.useCallback)((async()=>{let a;const i=b.saveButtonFactory();a=p?i.hitDislike({itemToBeDisliked:e}):i.hitLike({itemToBeLiked:e}),s.logInteraction(a),u({targetUri:e,intent:p?"unsave":"save",type:"click"});try{await j(!p)}catch{}}),[u,e,p,j,b,s]),N=(0,X.Q)(),S=(0,_.j)();return(0,I.jsx)(z.o,{backgroundColor:r,children:(0,I.jsxs)(z.F,{children:[(0,I.jsx)(v.$,{onClick:y,disabled:!d,isPlaying:i,size:S,uri:e}),N&&(0,I.jsx)(D.Nh,{spec:b,children:(0,I.jsx)(K.K,{entityName:o,contextUri:e,activationPlacement:"bottomEnd",size:S})}),(0,I.jsx)(q.x,{uri:e,action:G.sr.SAVE_ALBUM,children:(0,I.jsx)(B.H,{isAdded:!!p,onClick:f,disabled:!h&&!x?.getCapabilities().canModifyOffline,size:S})}),(0,I.jsx)(R.o,{uri:e,isFollowing:!!p,onClick:(a,i)=>(0,Z.l7)(i,b.downloadButtonFactory(),s,e),onFollow:f,size:S}),(0,I.jsx)(A.ClickToggleContextMenu,{onShow:()=>(0,Z.qq)(b,s),menu:(0,I.jsx)(k.Y,{uri:e,artistUri:c?.[0]?.uri,sharingInfo:m}),children:(0,I.jsx)(E.MoreButton,{label:g.ag.get("more.label.context",o),size:S})})]})})}));var $=i(15161);const W=864e5,J=365.25*W;var ee=i(7071),ae=i(78159),ie=i(17946),ne=i(3893),te=i(31234),le=i(26302),se=i(65030),re=i(6284),oe=i(95543);const ce="TCmZzqInstJMZjkHgnw3",de="PeNI572tTpqsN23o3QhJ",me="oUsSfFiifMPXqW0kHjR6",ue="XKvEMQZlPfPncTqiitM5",ge="GdbPVlmUCW0Q6ZZ0z0wh",he="Hu7O5y7x5c7wUYFbnIoS",ke=n.memo((function(e){const{images:a,title:i,isOpen:t,onClose:l}=e,s=(0,n.useMemo)((()=>(0,oe.X)(a,{desiredSize:1e4})),[a]);return s?(0,I.jsx)(se.Z,{className:ce,isOpen:t,onRequestClose:l,animation:{modal:{base:ue,afterOpen:ge,beforeClose:he}},animated:!0,children:(0,I.jsxs)("div",{style:{"--image-width":`${s.width}px`,"--image-height":`${s.height}px`},className:de,children:[(0,I.jsx)(re.E,{loading:"eager",alt:i,src:s.url,className:me}),(0,I.jsx)(le.o,{onClick:l,semanticColor:"textBase",children:g.ag.get("web-player.cover-art-modal.close")})]})}):null}));var xe=i(25143),be=i(93017),pe=i(66097),je=i(10219);const ye=({releases:e})=>(0,I.jsx)(pe.v,{children:e.map((e=>(0,I.jsx)(je.s,{role:"menuitem",to:(0,be.EC)(e.uri).toURLPath(!0),children:e.name},e.uri)))});var ve=i(60967),fe=i(24988),Ne=i(23735);const Se="album-albumPage-sectionWrapper",Ce="zddjxV2lX9ukNM5QXloA",Ie="lVqlPjQLuQhK2flsxB78",Fe="O_EguRjsZ4uI1hHamkOA",Ue="jcaQQxoVnuuhtVwDJU1R",we="x-album-releasesDropdown",Ae="in4OjUTflcsoj9RUpf05",Me="_9KFlmOOpGkGHvRTBz2LX",Te=n.lazy((()=>i.e(9023).then(i.bind(i,29023))));function Pe(e){switch(e){case fe.V.Single:return g.ag.get("single");case fe.V.Ep:return g.ag.get("ep");case fe.V.Compilation:return g.ag.get("compilation");case fe.V.Audiobook:return g.ag.get("card.tag.audiobook");case fe.V.Album:default:return g.ag.get("album")}}const Le=({uri:e,album:a})=>{const i=(0,r.TH)(),{spec:t,logger:y,UBIFragment:f}=(0,D.fU)(u.w,{data:{uri:e}}),N=(0,n.useMemo)((()=>t.trackListFactory()),[t]),S=(0,n.useMemo)((()=>t.moreByArtistShelfFactory()),[t]),C=a.moreAlbumsByArtist,T=parseInt(new URLSearchParams((0,r.TH)().search).get("index")||"0",10),V=(0,U.Y)(e),{usePlayContextItem:z,togglePlay:B,isPlaying:R,isActive:E}=(0,P.n)({uri:V},{featureIdentifier:"album"}),q=(0,n.useCallback)(((e,a)=>{if(t){const e=t.headerFactory().artistNameFactory().hitUiNavigate({destination:a.creator.uri});y.logInteraction(e)}}),[y,t]),{isOpen:_,openModal:Q,closeModal:H}=(()=>{const[e,a]=(0,n.useState)(!1);return{isOpen:e,openModal:(0,n.useCallback)((()=>a(!0)),[]),closeModal:(0,n.useCallback)((()=>a(!1)),[])}})(),Z=(0,m.W6)(ne.DUY,{loadingValue:!1})?{onClick:Q,ariaLabel:g.ag.get("web-player.album.open_coverart_modal")}:{},G=(0,n.useCallback)((()=>new URLSearchParams(i.search.slice(1)).get("highlight")||""),[i.search]),K=a.uri,X=a.name,le=a.albumType,se=a.release?.date,re=a.nrTracks,oe=a.images,ce=a.extractedColors?.colorRaw.hex,de=a.artists,me=a.isPlayable,ue=a.isCatalogueRestricted,ge=a.copyright.items,he=a.courtesyLine,be=a.duration.durationMs,pe=a.duration.isEstimate,je=G(),ve=(0,s.v9)(te.Gg),fe=ve.overrides?.locale??g.ag.getLocale(),Le=(0,ie.k)({uri:e,type:"locale"}),De=(0,L.OT)({albumName:X,albumType:le,albumArtists:de.map((e=>e.name)).join(g.ag.getSeparator()),shouldLocalize:Le,i18n:g.ag});(0,w.Y5)(ce||null);const{albumId:Oe=""}=(0,r.UO)(),Ve=(0,xe.GA)(Oe,"album"),ze=function(e){return(0,n.useMemo)((()=>{if(!e?.date)return null;if("day"===e.precision){const a=new Date(e.date),i=(new Date).getTime()-a.getTime(),n=i%J;return n<3.5*W||n>312552e5?Math.round(i/J):null}return null}),[e])}(a.release);return(0,I.jsxs)("section",{className:Se,"data-testid":"album-page",children:[(0,I.jsx)(x.$,{children:De}),null!==ze?(0,I.jsx)(n.Suspense,{fallback:null,children:(0,I.jsx)(Te,{colorLight:a?.extractedColors?.colorLight.hex,colorDark:a?.extractedColors?.colorDark.hex,name:X,years:ze})}):null,(0,I.jsxs)(b.gF,{backgroundColor:ce,children:[(0,I.jsxs)(p.W,{children:[(0,I.jsx)(v.$,{size:"medium",onClick:()=>B(),disabled:!me,isPlaying:R,uri:e}),(0,I.jsx)(j.i,{text:X,dragUri:e,dragLabel:X})]}),(0,I.jsx)(A._,{menu:(0,I.jsx)(k.Y,{uri:a.uri,artistUri:de?.[0]?.uri,sharingInfo:a.sharingInfo}),children:(0,I.jsx)(b.Oz,{dragUri:K,images:oe,name:X,placeholderType:"album",...Z})}),(0,I.jsxs)(b.sP,{children:[(0,I.jsx)(ee.g,{children:Pe(le)}),(0,I.jsx)(A._,{menu:(0,I.jsx)(k.Y,{uri:a.uri,artistUri:de?.[0]?.uri,sharingInfo:a.sharingInfo}),children:(0,I.jsx)(b.xd,{dragUri:a.uri,dragLabel:a.name,scaleAtMinWidth:b.vz,children:X})}),(0,I.jsx)(b.QS,{creators:de,onCreatorClick:q,releaseDate:se,totalItems:re,durationMilliseconds:be,isEstimatedDuration:pe,hasTracks:!0})]})]}),(0,I.jsx)(Y,{backgroundColor:ce,uri:e,togglePlay:B,isPlaying:R,isActive:E,spec:t,logger:y,sharingInfo:a.sharingInfo,name:a.name,artists:a.artists,isPlayable:a.isPlayable}),ue?(0,I.jsxs)("div",{className:Ce,children:[(0,I.jsx)(o.D,{as:"h2",variant:"cello",className:Ie,children:g.ag.get("windowed.product-album-header")}),(0,I.jsx)("div",{className:Fe,children:g.ag.get("windowed.product-album-description")})]}):null,(0,I.jsxs)("div",{className:"contentSpacing",children:[(0,I.jsx)(f,{spec:N,children:(0,I.jsx)($.L,{ariaLabel:X,nrTracks:(0,Ne.y)(a.discs)?a.discs.totalCount+re:re,discs:a.discs,albumUri:K,highlightUri:je,scrollToIndex:T,usePlayContextItem:z,initalTracks:a.items})}),(0,I.jsxs)("div",{className:Ae,children:[(0,I.jsxs)("div",{children:[se&&(0,I.jsx)(o.D,{as:"p",variant:"mesto",children:(0,O.BI)((0,O.RX)(se),fe,{year:"numeric",month:"long",day:"numeric"})}),(0,I.jsx)(M.k,{copyrights:ge,courtesyLine:he})]}),a.releases.items.length>0&&(0,I.jsx)(A.x,{menu:(0,I.jsx)(ye,{releases:a.releases.items}),children:(e,i,n)=>(0,I.jsxs)("button",{ref:n,className:we,type:"button",onClick:i,children:[(0,I.jsx)(o.D,{variant:"mesto",children:g.ag.get("album-page.more-releases",a.releases.items.length)}),e?(0,I.jsx)(c.U,{iconSize:16}):(0,I.jsx)(d.i,{iconSize:16})]})})]})]}),(0,I.jsx)(F,{albumName:X,albumURI:K}),(0,I.jsx)(I.Fragment,{children:C?.length>0&&(0,I.jsx)("div",{className:"contentSpacing",children:(0,I.jsx)(f,{spec:S,children:(0,I.jsx)(ae.q,{index:0,id:"more-albums",className:Ue,title:g.ag.get("album-page.more-by-artist",de?.[0]?.name),total:C.length,seeAllUri:`${de?.[0]?.uri.replace("artist","app:artist")}:discography`,seeAllLabel:g.ag.get("artist-page.show-discography"),alwaysShowSeeAll:!0,children:C.map(((e,a)=>(0,I.jsx)(h.i,{index:a,artists:de,images:e.images||[],name:e.name,uri:e.uri,year:e.year,type:e.albumType,sharingInfo:e.sharingInfo},e.uri)))})})})}),Ve&&(0,I.jsx)("div",{className:l()("contentSpacing",Me),children:(0,I.jsx)(xe.qj,{title:g.ag.get("generative-ai.album.title"),uri:e})}),(0,I.jsx)(ke,{title:De,isOpen:_,onClose:H,images:oe})]})},De=n.memo((function(){const{albumId:e}=(0,r.UO)(),a=`spotify:album:${e}`,{loading:i,error:n,data:t,canLoadOffline:l}=(0,ve.j)(a);return i||!t?(0,I.jsx)(y.h,{hasError:null!==n,loadOffline:l,errorMessage:g.ag.get("error.not_found.title.album")}):(0,I.jsx)(T.fd,{surface:T.Tg.ALBUM,uris:[a],children:(0,I.jsx)(Le,{uri:a,album:t})})}))}}]);
//# sourceMappingURL=xpui-routes-album.js.map